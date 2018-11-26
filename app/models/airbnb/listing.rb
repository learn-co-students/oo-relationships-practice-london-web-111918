class Listing
  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |place| place.listing == self
    end
  end

  def guests
    trips.collect { |person| person.guest}
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    Trip.all.select do |place|
     place.listing == city
    end
  end

  def self.most_popular
  counter = 0
  most_pop = ""
    Trip.all.each do |trip|
      if trip.listing.trip_count > counter
        counter = trip.listing.trip_count
        most_pop = trip.listing
      end
    end
    most_pop
  end

end
