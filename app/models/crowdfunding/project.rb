class Project

  attr_accessor :pledges
  attr_reader :user, :title, :pledge_goal

  @@projects = []
  def initialize(user, title, pledge_goal)
    @user = user
    @title = title
    @pledge_goal = pledge_goal
    @pledges = []
    self.class.all << self
  end

  def self.all
    @@projects
  end

end
