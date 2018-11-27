class Driver

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    self.rides.map(&:passenger)
  end

  def rides
    Ride.all.select {|ride|ride.driver == self}
  end

  def self.mileage_cap(distance_float)
    self.all.select do |driver|
      driver.rides.inject(0) {|sum, ride| sum + ride.distance} > distance_float.to_f
    end
  end


end
