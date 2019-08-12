require_relative '../config/environment.rb'




user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")

card1 = RecipeCard.new(user1, recipe1, 8, "8/12/2019")
card2 = RecipeCard.new(user2, recipe3, 7, "8/12/2019")
card3 = RecipeCard.new(user3, recipe1, 2, "8/12/2019")
card4 = RecipeCard.new(user1, recipe3, 2, "8/12/2019")

eggs = Ingredient.new("eggs")
milk = Ingredient.new("milk")
















binding.pry
0