require_relative '../config/environment.rb'


stew = Recipe.new("stew")
soup = Recipe.new("soup")
chowder = Recipe.new("chowder")
curry = Recipe.new("curry")

brandon = User.new("Brandon")
shane = User.new("Shane")
kenny = User.new("Kenny")
josh = User.new("Josh")

peanut = Ingredient.new("Peanut")
onion = Ingredient.new("Onion")
clam = Ingredient.new("Clam")
vegetable_stock = Ingredient.new("Vegatable Stock")
some_ingredients = [peanut, onion, clam]

stew_recipe = RecipeCard.new("best stew ever", brandon, stew, "9/13/2019", 9)
soup_recipe = RecipeCard.new("worst soup ever", shane, soup, "8/12/2018", 1)
chowder_recipe = RecipeCard.new("most ok chowder ever", shane, chowder, "3/13/2012", 5)
curry_recipe = RecipeCard.new("yummy curry", shane, curry, "4/13/2011", 7)
stew_recipe_2 = RecipeCard.new("second best stew ever", brandon, stew, "9/16/2019", 8)


peanut_allergy = Allergy.new(peanut, brandon)
onion_allergy = Allergy.new(onion, brandon)
clam_allergy = Allergy.new(clam, shane)
clam_allergy_shane = Allergy.new(clam, brandon)
vegetable_stock_allergy = Allergy.new(vegetable_stock, brandon)



stew_peanut = RecipeIngredient.new(peanut, stew)
chowder_clam = RecipeIngredient.new(clam, chowder)
stew_onion = RecipeIngredient.new(onion, stew)
chowder_onion = RecipeIngredient.new(onion, chowder)


binding.pry
0
