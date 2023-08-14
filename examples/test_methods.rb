require 'bundler/setup'
require 'dotenv'
require 'city-state'

Dotenv.load

# Setting the MaxMind ZIP URL (use your actual URL)
#CS.set_maxmind_zip_url('YOUR_MAXMIND_ZIP_URL_HERE')

# Setting the license key (use your actual license key)
CS.set_license_key(ENV['MAXMIND_LICENSE_KEY'])

# Updating the MaxMind database (this will download and extract the database)
# Uncomment the line below to run this
# CS.update_maxmind

# Updating the internal state data using the MaxMind database
# Uncomment the line below to run this
# CS.update

# Fetching and printing all countries
countries = CS.countries
puts "Countries:"
puts countries

# Fetching and printing states for a given country (e.g., US)
states = CS.states(:US)
puts "\nStates in US:"
puts states

# Fetching and printing cities for a given state and country (e.g., CA in US)
cities = CS.cities(:CA, :US)
puts "\nCities in CA, US:"
puts cities

# Simplified method to get countries, states, or cities based on parameters
puts "\nUsing CS.get method:"
puts CS.get # Should return countries
puts CS.get(:US) # Should return states in US
puts CS.get(:US, :CA) # Should return cities in CA, US
