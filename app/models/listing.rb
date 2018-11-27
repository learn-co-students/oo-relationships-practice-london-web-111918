require 'pry'

class Listing

  attr_accessor :guest, :trip, :listing

  @@all = []

  def self.all
    @@all
  end

  def initialize(listing)
    @listing = listing
    @@all << self
  end

  def guests
    trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.listing == city
    end
  end 

  def self.most_popular
    trip_count_hash = {}
    self.all.each {|listing| trip_count_hash[listing.listing] = listing.trip_count}
    trip_count_hash.sort_by {|k, v| v}
    trip_count_hash.keys[-1]
  end

end
