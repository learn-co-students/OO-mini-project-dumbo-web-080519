class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select {|card| card.user == self}
    end
    
    def recipes
        (self.recipe_cards.map {|card| card.recipe}).uniq
    end

    def add_recipe_card(recipe, rating)
        RecipeCard.new(self, recipe, rating)
    end

    def top_three_recipes
        top_cards = self.recipe_cards.max_by(3) {|recipe| recipe.rating}
        top_cards.map {|card| card.recipe}
    end

    def most_recent_recipe
        counter = 1
        most_recent = self.recipe_cards.first
        while counter < self.recipe_cards.length do 
            most_recent_array = [most_recent.date[0..1], most_recent.date[3..4], most_recent.date[6..9]]
            current_array = [self.recipe_cards[counter].date[0..1], self.recipe_cards[counter].date[3..4], self.recipe_cards[counter].date[6..9]]
            if current_array[2] > most_recent_array[2]
                most_recent = self.recipe_cards[counter]
            elsif (current_array[2] == most_recent_array[2]) && (current_array[0] > most_recent_array[0])
                most_recent = self.recipe_cards[counter]
            elsif (current_array[2] == most_recent_array[2]) && (current_array[0] == most_recent_array[0]) && (current_array[1] >= most_recent_array[1])
                most_recent = self.recipe_cards[counter]
            end
            counter += 1
        end
        most_recent.recipe
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergies
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def allergens
        self.allergies.map {|allergy| allergy.ingredient}.uniq
    end

end


