class Recipe
    attr_reader :ingredients, :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.most_popular
        hash = {}
        RecipeCard.all.each do |card|
            if !hash[card.recipe]
                hash[card.recipe] = 1
            else 
                hash[card.recipe] += 1
            end
        end
        k, v = hash.max_by do |k, v|
            v
        end
        k
    end

    def allergens
        allergen_array = []
        @ingredients.each do |item|
            allergen_array = Allergy.all.select{|allergy| allergy.ingredient == item}    
        end
        allergen_array
    end

    def recipe_cards
        RecipeCard.all.select {|card| card.recipe == self}
    end

    def users
        recipe_cards.map {|card| card.user}
    end

    def add_ingredients(ingredient_array)
        ingredient_array.each {|item| RecipeIngredient.new(item, self)}
    end

    def self.all
        @@all
    end

end