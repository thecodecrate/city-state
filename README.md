# city-state ruby gem

**city-state** is a very simple ruby gem to get a list of states in a country. Also, you can get a list of cities in a state, and a list of all countries of the world.

## Put this gem at your Gemfile:
```ruby
gem 'city-state'
```

## List of states:
```ruby
CS.states(:us)
# => {:AK=>"Alaska", :AL=>"Alabama", :AR=>"Arkansas", :AZ=>"Arizona", :CA=>"California", :CO=>"Colorado", :CT=>"Connecticut", :DC=>"District of Columbia", :DE=>"Delaware", :FL=>"Florida", :GA=>"Georgia", :HI=>"Hawaii", :IA=>"Iowa", :ID=>"Idaho", :IL=>"Illinois", :IN=>"Indiana", :KS=>"Kansas", :KY=>"Kentucky", :LA=>"Louisiana", :MA=>"Massachusetts", :MD=>"Maryland", :ME=>"Maine", :MI=>"Michigan", :MN=>"Minnesota", :MO=>"Missouri", :MS=>"Mississippi", :MT=>"Montana", :NC=>"North Carolina", :ND=>"North Dakota", :NE=>"Nebraska", :NH=>"New Hampshire", :NJ=>"New Jersey", :NM=>"New Mexico", :NV=>"Nevada", :NY=>"New York", :OH=>"Ohio", :OK=>"Oklahoma", :OR=>"Oregon", :PA=>"Pennsylvania", :RI=>"Rhode Island", :SC=>"South Carolina", :SD=>"South Dakota", :TN=>"Tennessee", :TX=>"Texas", :UT=>"Utah", :VA=>"Virginia", :VT=>"Vermont", :WA=>"Washington", :WI=>"Wisconsin", :WV=>"West Virginia", :WY=>"Wyoming"}
```
**PS:** *city-state is case insensitive. You can use :US, :us, :Us, "us", "US", ...*

## List of cities:
```ruby
CS.cities(:ak, :us)
# => ["Adak", "Akhiok", "Akiachak", "Akiak", "Akutan", "Alakanuk", "Ambler", "Anchor Point", "Anchorage", "Angoon", "Atqasuk", "Barrow", "Bell Island Hot Springs", "Bethel", "Big Lake", "Buckland", "Chefornak", "Chevak", "Chicken", "Chugiak", "Coffman Cove", "Cooper Landing", "Copper Center", "Cordova", "Craig", "Deltana", "Dillingham", "Douglas", "Dutch Harbor", "Eagle River", "Eielson Air Force Base", "Fairbanks", "Fairbanks North Star Borough", "Fort Greely", "Fort Richardson", "Galena", "Girdwood", "Goodnews Bay", "Haines", "Homer", "Hooper Bay", "Juneau", "Kake", "Kaktovik", "Kalskag", "Kenai", "Ketchikan", "Kiana", "King Cove", "King Salmon", "Kipnuk", "Klawock", "Kodiak", "Kongiganak", "Kotlik", "Koyuk", "Kwethluk", "Levelock", "Manokotak", "May Creek", "Mekoryuk", "Metlakatla", "Mountain Village", "Nabesna", "Naknek", "Nazan Village", "Nenana", "New Stuyahok", "Nikiski", "Ninilchik", "Noatak", "Nome", "Nondalton", "Noorvik", "North Pole", "Northway", "Old Kotzebue", "Palmer", "Pedro Bay", "Petersburg", "Pilot Station", "Point Hope", "Point Lay", "Prudhoe Bay", "Russian Mission", "Sand Point", "Scammon Bay", "Selawik", "Seward", "Shungnak", "Sitka", "Skaguay", "Soldotna", "Stebbins", "Sterling", "Sutton", "Talkeetna", "Teller", "Thorne Bay", "Togiak", "Tok", "Toksook Bay", "Tuntutuliak", "Two Rivers", "Unalakleet", "Unalaska", "Valdez", "Wainwright", "Wasilla"]
```

## All countries of the world:
```ruby
CS.countries
# => {:AD=>"Andorra", :AE=>"United Arab Emirates", :AF=>"Afghanistan", :AG=>"Antigua and Barbuda", :AI=>"Anguilla", :AL=>"Albania", :AM=>"Armenia", :AO=>"Angola", :AQ=>"Antarctica", :AR=>"Argentina", :AS=>"American Samoa", :AT=>"Austria", :AU=>"Australia", :AW=>"Aruba", :AX=>"Åland", :AZ=>"Azerbaijan", :BA=>"Bosnia and Herzegovina", :BB=>"Barbados", :BD=>"Bangladesh", :BE=>"Belgium", :BF=>"Burkina Faso", :BG=>"Bulgaria", :BH=>"Bahrain", :BI=>"Burundi", :BJ=>"Benin", :BL=>"Saint-Barthélemy", :BM=>"Bermuda", :BN=>"Brunei", :BO=>"Bolivia", :BQ=>"Bonaire", :BR=>"Brazil", :BS=>"Bahamas", :BT=>"Bhutan", :BW=>"Botswana", :BY=>"Belarus", :BZ=>"Belize", :CA=>"Canada", :CC=>"Cocos [Keeling] Islands", :CD=>"Congo", :CF=>"Central African Republic", :CG=>"Republic of the Congo"}
```

## Simplified syntax with *get* method:
* _CS.get_: list of countries (equivalent to `CS.countries`)
* _CS.get(country)_: list of states (equivalent to `CS.states(country)`)
* _CS.get(country, state)_: list of cities (equivalent to `CS.cities(state, country)`)

Example:
```ruby
CS.get
# => {:AD=>"Andorra", :AE=>"United Arab Emirates", :AF=>"Afghanistan", :AG=>"Antigua and Barbuda", :AI=>"Anguilla", :AL=>"Albania", :AM=>"Armenia", :AO=>"Angola", :AQ=>"Antarctica", :AR=>"Argentina", :AS=>"American Samoa", :AT=>"Austria", :AU=>"Australia", :AW=>"Aruba", :AX=>"Åland", :AZ=>"Azerbaijan", :BA=>"Bosnia and Herzegovina", :BB=>"Barbados", :BD=>"Bangladesh", :BE=>"Belgium", :BF=>"Burkina Faso", :BG=>"Bulgaria", :BH=>"Bahrain", :BI=>"Burundi", :BJ=>"Benin", :BL=>"Saint-Barthélemy", :BM=>"Bermuda", :BN=>"Brunei", :BO=>"Bolivia", :BQ=>"Bonaire", :BR=>"Brazil", :BS=>"Bahamas", :BT=>"Bhutan", :BW=>"Botswana", :BY=>"Belarus", :BZ=>"Belize", :CA=>"Canada", :CC=>"Cocos [Keeling] Islands", :CD=>"Congo", :CF=>"Central African Republic", :CG=>"Republic of the Congo"}
```
```ruby
CS.get :us
# => {:AK=>"Alaska", :AL=>"Alabama", :AR=>"Arkansas", :AZ=>"Arizona", :CA=>"California", :CO=>"Colorado", :CT=>"Connecticut", :DC=>"District of Columbia", :DE=>"Delaware", :FL=>"Florida", :GA=>"Georgia", :HI=>"Hawaii", :IA=>"Iowa", :ID=>"Idaho", :IL=>"Illinois", :IN=>"Indiana", :KS=>"Kansas", :KY=>"Kentucky", :LA=>"Louisiana", :MA=>"Massachusetts", :MD=>"Maryland", :ME=>"Maine", :MI=>"Michigan", :MN=>"Minnesota", :MO=>"Missouri", :MS=>"Mississippi", :MT=>"Montana", :NC=>"North Carolina", :ND=>"North Dakota", :NE=>"Nebraska", :NH=>"New Hampshire", :NJ=>"New Jersey", :NM=>"New Mexico", :NV=>"Nevada", :NY=>"New York", :OH=>"Ohio", :OK=>"Oklahoma", :OR=>"Oregon", :PA=>"Pennsylvania", :RI=>"Rhode Island", :SC=>"South Carolina", :SD=>"South Dakota", :TN=>"Tennessee", :TX=>"Texas", :UT=>"Utah", :VA=>"Virginia", :VT=>"Vermont", :WA=>"Washington", :WI=>"Wisconsin", :WV=>"West Virginia", :WY=>"Wyoming"}
```
```ruby
CS.get :us, :ak
# => ["Adak", "Akhiok", "Akiachak", "Akiak", "Akutan", "Alakanuk", "Ambler", "Anchor Point", "Anchorage", "Angoon", "Atqasuk", "Barrow", "Bell Island Hot Springs", "Bethel", "Big Lake", "Buckland", "Chefornak", "Chevak", "Chicken", "Chugiak", "Coffman Cove", "Cooper Landing", "Copper Center", "Cordova", "Craig", "Deltana", "Dillingham", "Douglas", "Dutch Harbor", "Eagle River", "Eielson Air Force Base", "Fairbanks", "Fairbanks North Star Borough", "Fort Greely", "Fort Richardson", "Galena", "Girdwood", "Goodnews Bay", "Haines", "Homer", "Hooper Bay", "Juneau", "Kake", "Kaktovik", "Kalskag", "Kenai", "Ketchikan", "Kiana", "King Cove", "King Salmon", "Kipnuk", "Klawock", "Kodiak", "Kongiganak", "Kotlik", "Koyuk", "Kwethluk", "Levelock", "Manokotak", "May Creek", "Mekoryuk", "Metlakatla", "Mountain Village", "Nabesna", "Naknek", "Nazan Village", "Nenana", "New Stuyahok", "Nikiski", "Ninilchik", "Noatak", "Nome", "Nondalton", "Noorvik", "North Pole", "Northway", "Old Kotzebue", "Palmer", "Pedro Bay", "Petersburg", "Pilot Station", "Point Hope", "Point Lay", "Prudhoe Bay", "Russian Mission", "Sand Point", "Scammon Bay", "Selawik", "Seward", "Shungnak", "Sitka", "Skaguay", "Soldotna", "Stebbins", "Sterling", "Sutton", "Talkeetna", "Teller", "Thorne Bay", "Togiak", "Tok", "Toksook Bay", "Tuntutuliak", "Two Rivers", "Unalakleet", "Unalaska", "Valdez", "Wainwright", "Wasilla"]
```

# Missing cities and wrong names
To add missing cities or to rename wrong ones, create these files in your project folder:
`db/cities-lookup.yml` and `db/states-lookup.yml` and `db/countries-lookup.yml`:

1) Renaming a country - `US` to `America`:
```yaml
# db/countries-lookup.yml
US: "America"
```

2) Renaming a state - `California` to `Something Else`:
```yaml
# db/states-lookup.yml
US:
  CA: Something Else
```

3) Renaming a city:
```yaml
# db/cities-lookup.yml
US:
  CA:
    "Burbank": "Bur Bank"
```

4) Adding a missing city:
```yaml
# db/cities-lookup.yml
US:
  CA:
    "My Town": "My Town"
```

5) Suppressing a city (set it as a blank line):
```yaml
# db/cities-lookup.yml
US:
  CA:
    "Burbank": ""
```

To use a different file instead of `db\cities-lookup.yml`:
```ruby
CS.set_cities_lookup_file('new-city-names.yml')
CS.set_states_lookup_file('new-state-names.yml')
CS.set_countries_lookup_file('new-country-names.yml')
```

# Update the database from MaxMind
MaxMind update their databases weekly on Tuesdays.

Since Dec 30, 2019, MaxMind requires a license key (for free) to get download updates.

To get the license key:
1. Sign up for a MaxMind account: https://www.maxmind.com/en/geolite2/signup
2. Create a license key: https://www.maxmind.com/en/accounts/current/license-key

To update:
```ruby
CS.set_license_key('MY_KEY')
CS.update
```
_*PS:* Replace "_MY_KEY_" with your actual key._

## Manually setting a database file:
You can use an alternative database file instead of downloading from MaxMind servers:
```ruby
CS.set_maxmind_zip_url('/home/daniel/GeoLite2-City-CSV_20200324.zip')
CS.update
```
or
```ruby
CS.set_maxmind_zip_url('https://example.com/GeoLite2-City-CSV_20200324.zip')
CS.update
```

The file has to be a ZIP file. And it has contains a CVS file named `GeoLite2-City-Locations-en.csv`. This file must be in the MaxMind's GeoLite2 City's format.

# Other countries:

When getting a city list, you can also specifies the country:
```ruby
CS.cities(:sp, :br)
```

The country is an optional argument. **city-state** always uses the last country that you used.
```ruby
CS.states(:br)
# => {:AC=>"Acre", :AL=>"Alagoas", :AM=>"Amazonas", :AP=>"Amapa", :BA=>"Bahia", :CE=>"Ceara", :DF=>"Federal District", :ES=>"Espirito Santo", :GO=>"Goias", :MA=>"Maranhao", :MG=>"Minas Gerais", :MS=>"Mato Grosso do Sul", :MT=>"Mato Grosso", :PA=>"Para", :PB=>"Paraiba", :PE=>"Pernambuco", :PI=>"Piaui", :PR=>"Parana", :RJ=>"Rio de Janeiro", :RN=>"Rio Grande do Norte", :RO=>"Rondonia", :RR=>"Roraima", :RS=>"Rio Grande do Sul", :SC=>"Santa Catarina", :SE=>"Sergipe", :SP=>"Sao Paulo", :TO=>"Tocantins"}
CS.cities(:to)
# => ["Aparecida do Rio Negro", "Araguaína", "Brejinho de Nazare", "Gurupi", "Itaguatins", "Miracema do Tocantins", "Monte Alegre", "Palmas", "Paraiso do Tocantins", "Parana", "Pedro Afonso", "Porto Nacional", "Presidente Kennedy", "Salvador", "Santo Antonio", "Sao Domingos", "Taguatinga", "Tucum"]
```

# Changelog
* 0.1.0:
  - [Minor] Added `set_license_key(license_key)` and `set_maxmind_zip_url(url)` methods;
  - [Minor] Removed Rails code, so it can be used on pure Ruby;
  - [Minor] Allow to rename and to add missing cities;
  - [Minor] Updated default MaxMind database;
  - [Fix] Filter duplicated elements (ex. `CS.cities(:ca, :us)` was returning `Burbank` twice);
  - [Fix] Upgraded dependencies (some had security issues);
  - [Fix] Calling `CS.cities(nil)` was returning random values;

# More details about this gem
https://learnwithdaniel.com/2015/02/citystate-list-of-countries-cities-and-states-ruby/

# CityState License
**city-state** is a open source project by Daniel Loureiro with a MIT license. Also, it uses MaxMind open source database.

# MaxMind License
Database and Contents Copyright (c) 2020 MaxMind, Inc.
This work is licensed under the Creative Commons Attribution 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/.
