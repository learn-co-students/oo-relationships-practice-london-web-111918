class Passenger

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def drivers
    self.rides.map(&:driver)
  end

  def rides
    Ride.all.select {|ride|ride.passenger == self}
  end

  def total_distance
    self.rides.inject(0) {|sum, ride| sum + ride.distance}
  end

  def self.premium_members
    Passenger.all.select do |passenger|
      if passenger.total_distance > 100
        passenger
      end
    end
  end

end
