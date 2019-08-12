class Recipe

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        recipe_count_hash = {}
        RecipeCard.all.each do |recipe_card|
            if !recipe_count_hash[recipe_card.recipe]
                recipe_count_hash[recipe_card.recipe] = 1
            else
                recipe_count_hash[recipe_card.recipe] +=1
            end
        end
        (recipe_count_hash.max_by {|recipe, count| count})[0]       
    end

    def recipe_cards
        RecipeCard.all.select {|card| card.recipe == self}
    end
    
    def users
        (self.recipe_cards.map {|card| card.user}).uniq
    end

end
