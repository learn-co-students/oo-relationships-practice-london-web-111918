class Listing

  attr_reader :city, :address

  @@listings = []
  def initialize(address, city)
    @address = address
    @city = city
    self.class.all << self
  end

  def self.all
    @@listings
  end

  def self.find_all_by_city(find_city)
    self.all.each_with_object([]) do |listing, by_city|
      by_city << listing if listing.city == find_city
    end
  end

  def self.most_popular
    # listing_count = 0
    # pop_listing = ""
    # Trip.all.each do |trip|
    #   if trip.listing.trip_count > listing_count
    #     listing_count = trip.listing.trip_count
    #     pop_listing = trip.listing
    #   end
    # end
    # pop_listing
    self.all.max_by(&:trip_count)
  end

  def trips
    Trip.all.select {|trip| trip.listing.address == address}
  end

  def guests
    trips.each_with_object([]) do |trip, guests|
      guests << trip.guest
    end
  end

  def trip_count
    trips.count
  end

end
