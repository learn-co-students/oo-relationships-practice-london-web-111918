require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



helena = User.new("Hel")
holly = User.new("Holly")
zac = User.new("Zac")
john = User.new("John")
cody_coder = User.new("Cody")
aaron = User.new("Aaron")
sarah = User.new("Sarah")
prince_eric = User.new("Eric")

p1 = Pledge.new(john, "Help The Kittens", 2)
p2 = Pledge.new(sarah, "Help The Kittens", 4)
p3 = Pledge.new(sarah, "Free coffee", 4)
p4 = Pledge.new(sarah, "Free coffee", 4)
p5 = Pledge.new(sarah, "Free coffee", 4)


project_1 = Project.new("Help The Kittens", 5, holly)
project_2 = Project.new("Free coffee", 5, john)
project_3 = Project.new("Free dog", 10, john)

binding.pry
0
