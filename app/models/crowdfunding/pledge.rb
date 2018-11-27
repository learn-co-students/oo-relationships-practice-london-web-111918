class Pledge

  attr_reader :user, :project, :amount

  @@pledges = []
  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount
    self.class.all << self
  end

  def self.all
    @@pledges
  end

end
