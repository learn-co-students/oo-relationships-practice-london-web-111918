class User

  attr_accessor :pledges
  attr_reader :name

  @@users = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@users
  end

  def create_project(title, pledge_goal)
    Project.new(self, title, pledge_goal)
  end

  def back_project(project, amount)
    Pledge.new(self, project, amount)
  end

end
