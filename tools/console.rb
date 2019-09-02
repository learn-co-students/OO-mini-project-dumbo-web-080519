require_relative '../config/environment.rb'




matt = User.new("matt")
joel = User.new("joel")
kenny = User.new("kenny")

chicken = Recipe.new("chicken")
pizza = Recipe.new("pizza")
cake = Recipe.new("cake")

eggs = Ingredient.new("eggs")
milk = Ingredient.new("milk")
sugar = Ingredient.new("sugar")

chicken.add_ingredients([milk, eggs])
cake.add_ingredients([milk, eggs, sugar])
pizza.add_ingredients([eggs])

matt.add_recipe_card(chicken, 10)
matt.add_recipe_card(pizza, 8)
joel.add_recipe_card(pizza, 9)
joel.add_recipe_card(cake, 4)
kenny.add_recipe_card(pizza, 5)
kenny.add_recipe_card(chicken, 1)

matt.declare_allergy(milk)
matt.declare_allergy(eggs)
matt.declare_allergy(sugar)
joel.declare_allergy(eggs)
joel.declare_allergy(sugar)
kenny.declare_allergy(eggs)
kenny.declare_allergy(milk)


binding.pry
0