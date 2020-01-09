require 'rest-client'
require 'byebug'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create()
  api = RestClient.get("https://api.openbrewerydb.org/breweries?by_city=Atlanta")
  breweries_obj = JSON.parse(api)
  # byebug
  breweries_obj.map{ |brewery| Brewery.create(name: brewery["name"], brewery_type: brewery["brewery_type"], street: brewery["street"], city: brewery["city"], state: brewery["state"], postal_code: brewery["postal_code"], longitude: brewery["longitude"], latitude: brewery["latitude"], phone: brewery["phone"], website_url: brewery["website_url"])}
end

create
