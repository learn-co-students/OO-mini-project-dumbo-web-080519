require_relative '../config/environment.rb'


renee = User.new("Renée")
mina = User.new("Mina")
wheat = Ingredient.new("wheat")
allergy1 = Allergy.new(renee, wheat)
french = Recipe.new("French Toast")
beet_salad = Recipe.new("Beet Salad")

# renee.add_recipe_card(french, "12/10")
# mina.add_recipe_card(french, "12/10")
# renee.add_recipe_card(beet_salad, "8/5", 1)

binding.pry
