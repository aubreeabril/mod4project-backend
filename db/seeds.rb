# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'rest-client'
require 'pry'

app_id = Rails.application.credentials[:api][:id]
app_key = Rails.application.credentials[:api][:key]


def getRecipes(search, app_id, app_key)
  recipesJson = JSON.parse(RestClient.get("https://api.edamam.com/search?q=" + search + "&app_id=" + app_id + "&app_key=" + app_key + "&from=0&to=100"))
  # binding.pry
  recipesJson['hits'].each do |recipe|
    Recipe.create(title: recipe['recipe']['label'], image: recipe['recipe']['image'], source: recipe['recipe']['source'], src_url: recipe['recipe']['url'], ingredient_lines: recipe['recipe']['ingredientLines'], health_labels: recipe['recipe']['healthLabels'], yield: recipe['recipe']['yield'])
  end
end

# getRecipes('chicken', app_id, app_key)
# getRecipes('pasta', app_id, app_key)
# getRecipes('cake', app_id, app_key)
# getRecipes('cheese', app_id, app_key)
# getRecipes('salmon', app_id, app_key)

# getRecipes('vegetarian', app_id, app_key)
# getRecipes('gluten', app_id, app_key)
# getRecipes('bread', app_id, app_key)
# getRecipes('steak', app_id, app_key)
# getRecipes('cookies', app_id, app_key)

getRecipes('taco', app_id, app_key)
