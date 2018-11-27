class Dessert

  attr_accessor :name, :ingredients

  @@all = []

  def initialize(name, *ingredient)
    @name = name
    @ingredients = *ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    Bakery.all.find do |bakery|
      if bakery.desserts.include?(self)
        return bakery
      end
    end
  end

  def calories
    total_calories = 0
    self.ingredients.map do |ingredient|
      total_calories += ingredient.calories
    end
    total_calories
  end

end
