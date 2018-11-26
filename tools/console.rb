require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Guest.new("john")
sally = Guest.new("sally")

seattle = Listing.new("seattle")
cali = Listing.new("california")

summer = Trip.new(john, seattle)
spring = Trip.new(sally, cali)
autumn = Trip.new(sally, seattle)

#premier = Trip.new("sally", "premier")




Pry.start
