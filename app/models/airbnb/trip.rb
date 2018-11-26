class Trip
  attr_accessor :guest, :listing
  TRIPS = []
  def initialize( guest, listing)
    @guest = guest
    @listing = listing
    TRIPS << self
  end

  def self.all
    TRIPS
  end

  def listings

  end

  def guests

  end

end
