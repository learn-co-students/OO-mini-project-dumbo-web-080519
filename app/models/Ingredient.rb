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
    self.all.max_by do |ingredient|
      allergies_by_ingredient = Allergy.all.select do |allergy|
        allergy.ingredient == ingredient
      end
      allergies_by_ingredient.count
    end
  end


  #def self.most_common_allergen
  # freq = Allergy.all.inject(Hash.new(0)) do |allergy_frequency, allergy|
  #   allergy_frequency[allergy.ingredient] +=1 ; allergy_frequency
  # end
  # k, v = freq.max_by do |k, v|
  #   v
  # end
  #   k
  # end

end
