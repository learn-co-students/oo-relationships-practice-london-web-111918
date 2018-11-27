require 'pry'

class Guest

  attr_accessor :guest, :trip, :listing

  @@all = []

  def self.all
    @@all
  end

  def initialize(guest)
    @guest = guest
    @@all << self
  end

  def listings
    trips.map do |trip|
      trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    trip_count_hash = {}
    self.all.each {|guest| trip_count_hash[guest.guest] = guest.trip_count}
    trip_count_hash.delete_if {|k,v| v < 2}
    trip_count_hash.keys
  end

  def self.find_all_by_name(name)
    self.all.select do |guest|
      guest.guest == name
    end
  end

end
