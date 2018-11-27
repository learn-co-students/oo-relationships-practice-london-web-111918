class Driver

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.mileage_cap(dist)
    Ride.all.each_with_object([]) do |ride, exceeders|
      exceeders << ride.driver if ride.distance > dist
    end.uniq
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger}
  end

end
