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

  #def users
  #  Allergy.all.map do |allergy|
  #    allergy.user
  #  end


  # def self.most_common_allergen
  #   Allergy.all.max_by do |allergy|
  #     allergy
  #   end
  # end

  def self.most_common_allergen
   freq = Allergy.all.inject(Hash.new(0)) do |allergy_frequency, allergy|
     allergy_frequency[allergy.ingredient] +=1 ; allergy_frequency
   end
   k, v = freq.max_by do |k, v|
     v
   end
     k
  end

end
