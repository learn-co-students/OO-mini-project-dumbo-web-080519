class Recipe

  attr_reader :ingredients
  @@all = []

  def initialize
    @ingredients = []
    @@all << self
  end

  def self.all
      @@all
  end

  def self.most_popular
    recipe_array = RecipeCard.all.map do |recipe_card|
      recipe_card.recipe
    end
    recipe_array.max {|recipe| recipe.users.count}
  end

#has many through relationship to user
  def find_recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    self.find_recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end
#???? until testing
#method for both #ingridents (from reader) and #add_ingridents
  def add_ingredients(ingredients)
    @ingredients.concat(ingredients)
  end
  #access the allergen instance method from User class
  def find_allergies
    all_allergens = User.all.map do |user|
      user.allergens
    end
    all_allergens.flatten.uniq
  end

  def allergens
    self.find_allergies.select do |ingredient|
      @ingredients.include?(ingredient)
    end
  end

end
