class User

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def top_three_recipes
    recipe_array = self.find_recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end
    recipe_array.reverse.slice(0,2)
  end

  def most_recent_recipe
    self.find_recipe_cards.sort_by do |recipe_card|
      Time.now - recipe_card.date
    end.first
  end

  def recipes
    self.find_recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

#helper method for #allergens
  def find_allergies
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def allergens
    self.find_allergies.map do |allergy|
      allergy.ingredient
    end
  end


end
