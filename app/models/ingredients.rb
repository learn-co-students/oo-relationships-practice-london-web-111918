class Ingredient

  attr_accessor :name, :calories

  @@all = []

  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def dessert
    Dessert.all.select do |dessert|
      if dessert.ingredients.include?(self)
        dessert
      end
    end
  end

  def bakery
    Bakery.all.find do |bakery|
      bakery.desserts.each do |dessert|
        if dessert.ingredients.include?(self)
          return bakery
        end
      end
    end
  end

  def self.find_all_by_name(ingredient_name)
    self.all.select do |ingredient|
      if ingredient.name.include?(ingredient_name)
        ingredient
      end
    end
  end

end
