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

    def safe_recipe
        # take the ingredient instances from the allergen array
        allergic_to = allergens.map {|allergen| allergen.ingredient}
        # now we go through each each recipe and look at the ingredients
        Recipe.all.select do |recipe|
        # ingredients in each recipe is an array of ingredient instances
        # our allergic_to array also contains ingredient instances
        # We compare the two arrays, and if any element matches,
        # it gets return in a new array. 
        # We then check, if that array is empty
        # if it is empty, it means, our user is not allergic to
        # anything in this recipe, and we will return this recipe
            (recipe.ingredients & allergic_to).empty?
        end
        # after we iterate over every recipe, we return a new array of all
        # recipes we are not allergic to
    end

    def self.all
        @@all
    end

end