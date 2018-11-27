class Dessert

  attr_reader :bakery, :ingredients, :dessert

  @@all = []
  def initialize(bakery, dessert, *ingredients)
    @bakery = bakery
    @dessert = dessert
    @ingredients = ingredients
    self.class.all << self
  end

  def self.all
    @@all
  end

  def calories
    ingredients.map(&:calories).reduce(:+)
  end

end
