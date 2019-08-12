class Ingredient
  @@all = []
  attr_reader :ingredient
  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_allergies
    all_allergens = User.all.map do |user|
      user.allergens
    end
    all_allergens.flatten
  end

  def self.most_common_allergen
    self.find_allergies.max{ |allergen| self.find_allergies.count(aqllergen) }
  end
end
