class Ingredient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        all_allergens = Allergy.all.map {|allergy| allergy.ingredient}
        all_allergens.max_by {|allergen| all_allergens.count(allergen)}
    end

end
