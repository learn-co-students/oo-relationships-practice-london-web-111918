class Passenger

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.premium_members
    Ride.all.each_with_object([]) do |ride, premiums|
      premiums << ride.passenger if ride.passenger.total_distance > 100.0
    end.uniq
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}
  end

  def total_distance
    rides.map {|ride| ride.distance}.reduce(:+)
  end

end
