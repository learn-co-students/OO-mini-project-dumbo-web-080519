class RecipeIngredient
  @@all = []
  attr_reader :recipe, :ingredient

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingreident
    @@all << self
  end

  def self.all
    @@all
  end

end
