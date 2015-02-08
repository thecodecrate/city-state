require "city-state/version"

module CS
  # CS constants
  MAXMIND_ZIPPED_CSV = "http://geolite.maxmind.com/download/geoip/database/GeoLite2-City-CSV.zip"
  CSV_FN = "GeoLite2-City-Locations-en.csv"
  FILES_FOLDER = File.expand_path('../db', __FILE__)
  CSV_FN_FULL = File.join(FILES_FOLDER, CSV_FN)

  @cities = {}
  @states = {}
  @current_country = nil # :US, :BR, :GB, :JP, ...

  def self.update_maxmind
    require "open-uri"
    require "zip"

    # get zipped file
    f_zipped = open(MAXMIND_ZIPPED_CSV)

    # unzip file:
    # recursively searches for "GeoLite2-City-Locations-en"
    Zip::File.open(f_zipped) do |zip_file|
      zip_file.each do |entry|
        if entry.name["GeoLite2-City-Locations-en"].present?
          fn = entry.name.split("/").last
          entry.extract(File.join(FILES_FOLDER, fn)) { true } # { true } is to overwrite
          break
        end
      end
    end
    true
  end

  def self.update
    self.update_maxmind # update via internet
    Dir[File.join(FILES_FOLDER, "states.*")].each do |state_fn|
      self.install(state_fn.split(".").last.upcase.to_sym) # reinstall country
    end
    @cities = @states = {} # invalidades cache
    true
  end

  # constants: CVS position
  ID = 0
  COUNTRY = 4
  STATE = 6
  STATE_LONG = 7
  CITY = 10

  def self.install(country)
    # get CSV if doesn't exists
    update_maxmind unless File.exists? CSV_FN_FULL

    # normalize "country"
    country = country.to_s.upcase

    # read CSV line by line
    cities = {}
    states = {}
    File.foreach(CSV_FN_FULL) do |line|
      rec = line.split(",")
      next if rec[COUNTRY] != country
      next if rec[STATE].blank? || rec[CITY].blank?

      # normalize
      rec[STATE] = rec[STATE].to_sym
      rec[CITY].gsub!(/\"/, "") # sometimes names come with a "\" char
      rec[STATE_LONG].gsub!(/\"/, "") # sometimes names come with a "\" char

      # cities list: {TX: ["Texas City", "Another", "Another 2"]}
      cities.merge!({rec[STATE] => []}) if ! states.has_key?(rec[STATE])
      cities[rec[STATE]] << rec[CITY]

      # states list: {TX: "Texas", CA: "California"}
      if ! states.has_key?(rec[STATE])
        state = {rec[STATE] => rec[STATE_LONG]}
        states.merge!(state)
      end
    end

    # sort
    cities = Hash[cities.sort]
    states = Hash[states.sort]
    cities.each { |k, v| cities[k].sort! }

    # save to states.us and cities.us
    states_fn = File.join(FILES_FOLDER, "states.#{country.downcase}")
    cities_fn = File.join(FILES_FOLDER, "cities.#{country.downcase}")
    File.open(states_fn, "w") { |f| f.write states.to_yaml }
    File.open(cities_fn, "w") { |f| f.write cities.to_yaml }
    true
  end

  def self.current_country
    return @current_country if @current_country.present?

    # we don't have used this module yet: discover by the file extension
    fn = Dir[File.join(FILES_FOLDER, "cities.*")].last
    @current_country = fn.blank? ? nil : fn.split(".").last
    
    # there's no files: we'll install and use :US
    if @current_country.blank?
      @current_country = :US
      self.install(@current_country)

    # we find a file: normalize the extension to something like :US
    else
      @current_country = @current_country.to_s.upcase.to_sym    
    end

    @current_country
  end

  def self.current_country=(country)
    @current_country = country.to_s.upcase.to_sym
  end

  def self.cities(state, country = nil)
    self.current_country = country if country.present? # set as current_country
    country = self.current_country

    # load the country file
    if @cities[country].blank?
      cities_fn = File.join(FILES_FOLDER, "cities.#{country.to_s.downcase}")
      self.install(country) if ! File.exists? cities_fn
      @cities[country] = YAML::load_file(cities_fn).symbolize_keys
    end

    @cities[country][state.to_s.upcase.to_sym] || []
  end

  def self.states(country)
    self.current_country = country # set as current_country
    country = self.current_country # normalized

    # load the country file
    if @states[country].blank?
      states_fn = File.join(FILES_FOLDER, "states.#{country.to_s.downcase}")
      self.install(country) if ! File.exists? states_fn
      @states[country] = YAML::load_file(states_fn).symbolize_keys
    end

    @states[country] || []
  end
end