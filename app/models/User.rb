class User

    @@all = []

    def initialize
        @@all << self
    end

    ## connects user to recipes, through recipe card
    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end


    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def top_three_recipes
        (recipes.sort_by {|card| card.rating}).last(3)
    end

    def most_recent_recipe
        recipes.last
    end

    def recipes
        RecipeCard.all.select {|card| card.user == self}
    end

    def self.all
        @@all
    end

end