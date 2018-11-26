# create files for your ruby classes in this directory
class Project
  attr_accessor :project_name, :project_goal_amount, :project_creator, :project_funder, :amount_pledged

  @@all = []

  def initialize(project_name, project_goal_amount, project_creator)
    @project_name = project_name
    @project_goal_amount = project_goal_amount
    @project_creator = project_creator
    @amount_pledged = 0
    @project_funder = []
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges_received #checked
    array_of_pledges = Pledge.all.select{|pledge| pledge if pledge.project_receiving_pledge == self.project_name}
  end

  def total_amount_pledged_for_project
    array_of_pledges = pledges_received
    array_of_pledges.each do |pledge|
      @amount_pledged += pledge.pledge_amount
    end
    @amount_pledged
  end

  def self.no_pledges #checked
    array = []
    Project.all.each do |project|
      if project.total_amount_pledged_for_project == 0
        array << project
      end
    end
    array
  end

  def above_goal #checked
    total_amount_pledged_for_project > self.project_goal_amount
  end

  def self.most_backers #checked
    #In the event that there are two projects with the same count this method will return the first one
    project_name = "There are no projects that have been backed"
    Project.all.each do |project|
      array = []
      count = 0
      Pledge.all.each do |pledge|
        #binding.pry
        if pledge.project_receiving_pledge == project.project_name
          array << pledge.user_making_pledge
        end
        if array.uniq.length > count
          project_name = project
        end
      end

    end
    project_name
  end


end
