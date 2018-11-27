class Ride

  attr_reader :passenger, :driver, :distance

  @@rides = []
  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance.to_f
    self.class.all << self
  end

  def self.all
    @@rides
  end

end
