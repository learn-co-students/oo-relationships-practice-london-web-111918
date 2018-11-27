class Actor

  attr_accessor :actor, :character, :movie, :show

  @@all = []

  def self.all
    @@all
  end

  def initialize(actor_name)
    @actor = actor_name
    @@all << self
  end

end
