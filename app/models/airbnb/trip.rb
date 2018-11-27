class Trip

  attr_reader :listing, :guest

  @@trips = []
  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    self.class.all << self
  end

  def self.all
    @@trips
  end

end
