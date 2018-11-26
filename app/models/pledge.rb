# create files for your ruby classes in this directory
class Pledge
  attr_accessor :user_making_pledge, :project_receiving_pledge, :pledge_amount
  @@all = []

  def initialize(user_making_pledge, project_receiving_pledge, pledge_amount)
    @user_making_pledge = user_making_pledge
    @project_receiving_pledge = project_receiving_pledge
    @pledge_amount = pledge_amount
    @@all << self
  end

  def self.all
    @@all
  end

  def project
    pledge = @@all.find{|pledge| pledge.pledge_amount == self.pledge_amount } #could also be found by name
    pledge.project_receiving_pledge #returns project name string not a project object. Could change test data
  end

  def user
    pledge = @@all.find{|pledge| pledge.pledge_amount == self.pledge_amount} #could also be found by name
    pledge.user_making_pledge #returns user object
  end

end
