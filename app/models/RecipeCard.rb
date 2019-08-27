class RecipeCard
 
    # ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:  


    attr_reader :date , :user, :recipe
    attr_accessor :rating

# Returns an Array of recipe cards
    
    @@all = []

    def initialize(user, recipe, date, rating = nil)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating 
        @@all << self
    end


# - `RecipeCard.all`
# should return all of the RecipeCard instances
    
    def self.all
        @@all 
    end


end









