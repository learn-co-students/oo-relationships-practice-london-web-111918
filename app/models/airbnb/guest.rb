class Guest

  attr_reader :name

  @@guests = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@guests
  end

  def self.pro_traveller
    self.all.each_with_object([]) do |person, pros|
      pros << person if person.trip_count > 1
    end
  end

  def self.find_all_by_name(find_name)
    self.all.select {|person| person.name == find_name}
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def listings
    trips.map {|trip| trip.listing}
  end

  def trip_count
    trips.count
  end

end
