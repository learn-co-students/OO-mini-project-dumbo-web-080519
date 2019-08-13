class RecipeCard

    attr_reader :user, :recipe, :date, :rating

    @@all = []

    def initialize(user, recipe, rating)
        @user = user
        @rating = rating.round
        @recipe = recipe
        puts "Enter date for #{user.name}'s #{recipe.name} recipe (MM/DD/YYYY):"
        date = gets.chomp
        if date.length == 10 && date[2] == "/" && date[5] == "/"
            @date = date
        else
            raise "Invalid date. Please try again."
        end
        @@all << self
    end




    def self.all
        @@all
    end

end