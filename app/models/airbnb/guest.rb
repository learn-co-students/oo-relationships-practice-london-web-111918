class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |place| place.guest == self
    end
  end

  def listings
    trips.collect { |person| person.listing}
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_name(name)
    Trip.all.select do |person|
     person.name == name
    end
  end

  def self.pro_traveller
    arr = []
    self.all.each do |person|
      arr << person.name if person.trip_count > 1
    end
    arr
  end

end
