class RecipeCard

    attr_reader :user, :recipe, :date, :rating

    @@all = []

    def initialize(user, recipe, rating, date)
        @user = user
        @rating = rating.round
        @recipe = recipe
        @date = date
        @@all << self
    end




    def self.all
        @@all
    end

end