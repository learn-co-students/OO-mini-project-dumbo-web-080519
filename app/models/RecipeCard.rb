class RecipeCard
  @@all = []

  attr_reader :date, :user, :recipe
  attr_accessor :rating

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = Time.parse(date)
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
