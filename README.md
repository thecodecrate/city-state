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

## Update the database from MaxMind:
MaxMind update their databases weekly on tuesdays. To get a new and updated version, you can update with:
```ruby
CS.update
```

## Another countries:

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

# More details about this gem
http://www.learnwithdaniel.com/2015/02/citystate-list-of-cities-and-states-ruby/

# CityState License
**city-state** is a open source project by Daniel Loureiro with a MIT license. Also, it uses MaxMind open source database.

# MaxMind License
Database and Contents Copyright (c) 2015 MaxMind, Inc.
This work is licensed under the Creative Commons Attribution 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/.
