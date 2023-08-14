require 'spec_helper'

describe CS do
  # Testing the countries method
  it 'returns a list of countries' do
    countries = CS.countries
    expect(countries).to be_an(Hash)
    expect(countries).not_to be_empty
  end

  # Testing the states method for a given country
  it 'returns states for a given country' do
    states = CS.states(:US)
    expect(states).to be_an(Hash)
    expect(states).not_to be_empty
  end

  # Testing the cities method for a given state and country
  it 'returns cities for a given state and country' do
    cities = CS.cities(:CA, :US)
    expect(cities).to be_an(Array)
    expect(cities).not_to be_empty
  end

  # Testing the get method
  it 'returns countries, states, or cities based on parameters' do
    expect(CS.get).to eq(CS.countries)
    expect(CS.get(:US)).to eq(CS.states(:US))
    expect(CS.get(:US, :CA)).to eq(CS.cities(:CA, :US))
  end
end
