# create files for your ruby classes in this directory
class User
  attr_accessor :username
  @@all = []

  def initialize(username)
    @username = username
    @@all << self
    @all_projects_created = []
    @all_pledges = []
    @all_projects_pledged_to = []
  end

  def self.all
    @@all
  end

  def make_new_pledge(project_name, pledge_amount)
    pledge = Pledge.new(self.username, project_name, pledge_amount)
  end

  def make_new_project(project_name, project_goal_amount, username)
    project = Project.new(project_name, project_goal_amount, self.username)
  end

  def show_a_users_projects
    Project.all.select {|project| project.project_creator == self}
  end

  def show_a_users_pledges
    Pledge.all.select {|pledge| pledge.user_making_pledge == self}
  end


  def self.highest_pledge
    highest_pledge = Pledge.all.max_by{|pledge| pledge.pledge_amount}
    highest_pledge.user_making_pledge #checked
  end

  def self.multi_pledger #checked
    array_of_users = []
    User.all.select do |user|
      pledges = user.show_a_users_pledges
      pledges.map do |pledge| pledge.project_receiving_pledge
        if pledges.length > 1
          array_of_users << user
        end
      end
    end
    array_of_users.uniq
  end

  def self.creator
    Project.all.map{|project| project.project_creator}
  end

end
