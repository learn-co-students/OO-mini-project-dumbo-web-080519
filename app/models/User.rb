class User

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(name, recipe, date, rating)
    RecipeCard.new(name, self, recipe, date, rating)
  end


  def allergens
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end


  def most_recent_recipe
    recipe_cards = RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
    recipe_cards.last
  end

  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end

  def allergens
    Allergy.all.select do |allergy|
      allergy.user == self
    end.map do |users_allergy|
      users_allergy.ingredient
    end
  end

  def top_three_recipes
    sorted_recipes = recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end
    sorted_recipes.last(3).reverse!
  end

end
