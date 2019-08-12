class Recipe



# An Array of recepies 

    @@all = []


    def initialize(title)
        @title = title
    end
# - `Recipe.all`
# should return all of the recipe instances


def self.all 
    @@all
end



#returns an array of user objects for 
def self.get_users_for_recipe_card

    cards = RecipeCard.all #array of cards
    cards.map{ |card| card.user } #goes into one card and retrieves the user
end 

def most_popular

end

# ## `Recipe`
# Build the following methods on the Recipe class






# - `Recipe#users`
# should return the user instances who have recipe cards with this recipe





# - `Recipe#ingredients`
# should return all of the ingredients in this recipe





# - `Recipe#allergens`
# should return all of the `Ingredient`s in this recipe that are allergens for `User`s in our system.





# - `Recipe#add_ingredients`
# should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
end