class Bakery

  attr_accessor :name, :desserts

  @@all = []

  def initialize(name,  *dessert)
    @name = name
    @desserts = *dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    self.desserts.map(&:ingredients).flatten.uniq
  end

  def average_calories
    total_calories = 0
    self.desserts.map(&:ingredients).flatten.map {|ingredient| total_calories += ingredient.calories}
    total_calories.to_f / self.desserts.length.to_f
  end

  def shopping_list
    self.ingredients.map(&:name)
  end

end
