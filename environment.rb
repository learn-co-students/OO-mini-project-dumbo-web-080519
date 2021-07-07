require 'bundler'
require 'bundler/setup'
Bundler.require
require_all 'app/models/'
require 'time'
require 'pry'



brian = User.new("Brian")
sukrit = User.new("Sukrit")
dan = User.new("Dan")

blt = Recipe.new
bec = Recipe.new


bacon = Ingredient.new("bacon")
lettuce = Ingredient.new("lettuce")
tomato = Ingredient.new("tomato")
egg = Ingredient.new("egg")
cheese = Ingredient.new("cheese")

blt.add_ingredients([bacon,lettuce,tomato])
bec.add_ingredients([bacon,egg,cheese])

brian.declare_allergy(cheese)
sukrit.declare_allergy(tomato)
dan.declare_allergy(cheese)

brian.add_recipe_card(blt, "Aug 10", 8)
sukrit.add_recipe_card(bec, "Aug 8", 10)
dan.add_recipe_card(blt, "Aug 5", 6)
brian.add_recipe_card(bec, "Aug 3", 4)

binding.pry
