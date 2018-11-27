require 'pry'

class Trip

  attr_accessor :listing, :guest, :trip

  @@all = []

  def self.all
    @@all
  end

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

end
