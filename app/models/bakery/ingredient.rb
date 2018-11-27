class Ingredient

  attr_reader :name, :calories

  @@all = []
  def initialize(name, calories)
    @name = name
    @calories = calories
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    self.all.each_with_object([]) do |i, found|
      found << i.name if i.name.split.include?(ingredient)
    end
  end

  def dessert
    Dessert.all.select {|dessert| dessert.ingredients.include?(self)}
  end

  def bakery
    dessert.map(&:bakery).uniq
  end

end
