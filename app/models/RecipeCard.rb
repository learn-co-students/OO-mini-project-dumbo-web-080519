class RecipeCard

    attr_reader :user, :recipe, :rating
    attr_accessor :date

    @@all = []

    def initialize(user, recipe, rating)
        @user = user
        @rating = rating.round
        @recipe = recipe
        day = Time.now.day < 10 ? "0#{Time.now.day}" : Time.now.day.to_s
        month = Time.now.month < 10 ? "0#{Time.now.month}" : Time.now.month.to_s
        year = Time.now.year.to_s
        @date = "#{month}/#{day}/#{year}"
        @@all << self
    end




    def self.all
        @@all
    end

end