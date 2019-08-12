class Ingredient

    #an array of ingredients
    @@all = []

    def initialize(ingredient)
        @ingredient = ingredient
        @@all <<  self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
    end
end