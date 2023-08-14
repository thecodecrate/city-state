# City-State Ruby Gem

The `city-state` gem offers a straightforward way to retrieve lists of states for any given country and cities for any state. It's built on the MaxMind database, making it a reliable source for such data.

## Installation

Add the gem to your Gemfile:

```ruby
gem 'city-state'
```

Then, run:

```bash
$ bundle install
```

## Listing States:

Retrieve a list of states for a specified country:

```ruby
CS.states(:US)
```
**Note:** The gem is case-insensitive. You can use variations like `:US`, `:us`, `:Us`, `"us"`, and `"US"`.

## Listing Cities:

Retrieve a list of cities for a specified state and country:

```ruby
CS.cities(:AK, :US)
```

You can also specify the country, though it's optional. The gem remembers the last country you used:

```ruby
CS.states(:BR)

CS.cities(:TO)  # This will use Brazil (BR) as the country
```

Miscellaneous Notes:
- The country is an optional argument. The gem always uses the last country that you used.

## Listing Countries:

```ruby
CS.countries
```

## Missing cities and wrong names
To add missing cities or to rename wrong ones, create these files in your project folder:
`db/cities-lookup.yml` and `db/states-lookup.yml` and `db/countries-lookup.yml`:

### Renaming a country - `US` to `America`:

```yaml
# db/countries-lookup.yml
US: "America"
```

### Renaming a state - `California` to `Something Else`:

```yaml
# db/states-lookup.yml
US:
  CA: Something Else
```

### Renaming a city:

```yaml
# db/cities-lookup.yml
US:
  CA:
    "Burbank": "Bur Bank"
```

### Adding a missing city:

```yaml
# db/cities-lookup.yml
US:
  CA:
    "My Town": "My Town"
```

### Suppressing a city (set it as a blank line):
```yaml
# db/cities-lookup.yml
US:
  CA:
    "Burbank": ""
```

### To use a different file instead of `db\cities-lookup.yml`:

```ruby
CS.set_cities_lookup_file('new-city-names.yml')

CS.set_states_lookup_file('new-state-names.yml')

CS.set_countries_lookup_file('new-country-names.yml')
```

## Updating MaxMind database
MaxMind update their databases weekly on Tuesdays.

Since Dec 30, 2019, MaxMind requires a license key (for free) to get download updates.

To get the license key:
1. Sign up for a MaxMind account: https://www.maxmind.com/en/geolite2/signup
2. Create a license key: https://www.maxmind.com/en/accounts/current/license-key
3. There's no need to download anything.

To update:

```ruby
CS.set_license_key('MY_KEY')

CS.update
```
**Note:** Replace `MY_KEY` with your actual license key.

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

The file has to be a ZIP file. And it has to contain a CVS file named `GeoLite2-City-Locations-en.csv`. This file must be in MaxMind's GeoLite2 City's format.

## Changelog
See [CHANGELOG.md](CHANGELOG.md)

## How this gem was created
https://learnwithdaniel.com/2015/02/citystate-list-of-countries-cities-and-states-ruby/

## CityState License
**city-state** is a open source project by Daniel Loureiro with a MIT license. Also, it uses MaxMind open source database.

## MaxMind License
Database and Contents Copyright (c) 2020 MaxMind, Inc.
This work is licensed under the Creative Commons Attribution 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/.
