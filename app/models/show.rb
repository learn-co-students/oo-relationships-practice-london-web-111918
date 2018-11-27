class Show

  attr_accessor :actor, :character, :movie, :show

  @@all = []

  def self.all
    @@all
  end

  def initialize(show_name)
    @show = show_name
    @@all << self
  end

end
