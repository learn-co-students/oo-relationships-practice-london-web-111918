class Bakery

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    desserts.map(&:ingredients).flatten.uniq
  end

  def shopping_list
    ingredients.map(&:name).join(", ")
  end

  def average_calories
    calorie_total = desserts.map(&:calories).reduce(:+)
    calorie_total.to_f / desserts.count.to_f
  end

end
