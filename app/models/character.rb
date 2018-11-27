class Character

  attr_accessor :actor, :character, :movie, :show

  @@all = []

  def self.all
    @@all
  end

  def initialize(character_name)
    @character = character_name
    @@all << self
  end

end
