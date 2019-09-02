class Allergy

    attr_reader :user, :ingredient

    @@all = []
    @@all_ingredients = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
        if !@@all_ingredients.include?(ingredient)
            @@all_ingredients << ingredient
        end
    end

    def self.all
        @@all
    end

    def self.all_ingredients
        @@all_ingredients
    end

end