#require_relative '../config/environment.rb'
require "pry"
require_relative "../app/models/User"
require_relative "../app/models/Allergy"
require_relative "../app/models/Ingredient"
require_relative "../app/models/Recipe"
require_relative "../app/models/RecipeCard"
require_relative "../app/models/RecipeIngredient"


avi = User.new
derya = User.new
michelle = User.new

cheese = Ingredient.new("cheese")
apple = Ingredient.new("apple")
orange = Ingredient.new("orange")
pizza = Ingredient.new("pizza")
bread = Ingredient.new("bread")
sauce = Ingredient.new("red sauce")

avi.declare_allergy(cheese)
avi.declare_allergy(apple)
avi.declare_allergy(orange)
derya.declare_allergy(pizza)
michelle.declare_allergy(apple)

pizza_recipe = Recipe.new("cheese pizza")
burrito_bowl = Recipe.new("burrito bowl")
tacos = Recipe.new("taco")
salad = Recipe.new("salad")
nachos = Recipe.new("nachos")

pizza_recipe.add_ingredients([cheese, bread, sauce])

avi.add_recipe_card(pizza_recipe, Time.now, 4)
avi.add_recipe_card(tacos, Time.now, 5)
avi.add_recipe_card(salad, Time.now, 10)
avi.add_recipe_card(burrito_bowl, Time.now, 10)
derya.add_recipe_card(pizza_recipe, Time.now, 5)



binding.pry

