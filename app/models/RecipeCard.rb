class RecipeCard

  attr_reader :date, :user, :recipe
  attr_accessor :name, :rating
  @@all = []

  def initialize(name, user, recipe, date, rating = nil)
    @name = name
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def rating

  end



















end
