class Ingredient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.most_common_allergen
        hash = {}
        Allergy.all.each do |allergy|
            if !hash[allergy.ingredient]
                hash[allergy.ingredient] = 1
            else 
                hash[allergy.ingredient] += 1
            end
        end
        k, v = hash.max_by do |k, v|
            v
        end
        k
    end

    def self.all
        @@all
    end

end