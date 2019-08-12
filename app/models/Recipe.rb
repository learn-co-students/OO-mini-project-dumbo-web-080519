class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_ingredients(recipe_ingredient_array)
    recipe_ingredient_array.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end


  def allergens

  end

  def self.most_popular
    freq = RecipeCard.all.inject(Hash.new(0)) do |recipe_frequency, recipe|
      recipe_frequency[recipe.recipe] +=1 ; recipe_frequency
    end
    k, v = freq.max_by do |k, v|
      v
    end
      k
  end


  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

end
