class Movie

  attr_accessor :actor, :character, :movie, :show

  @@all = []

  def self.all
    @@all
  end

  def initialize(movie_name)
    @movie = movie_name
    @@all << self
  end

  def self.most_actors
    actor_count = {}
    self.all.each do |movie|
      actor_count[movie.movie] = movie.actor.count
    end
    actor_count
  end

end
