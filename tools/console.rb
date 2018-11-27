require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# david = Guest.new("David")
# paris = Listing.new("Paris")
# david_paris = Trip.new(david, paris)
#
# john = Guest.new("John")
# barcelona = Listing.new("Barcelona")
# john_barcelona = Trip.new(john, barcelona)
#
# sarah = Guest.new("Sarah")
# bruges = Listing.new("Bruges")
# sarah_bruges = Trip.new(sarah, bruges)
#
# david_barcelona = Trip.new(david, barcelona)
# john_bruges = Trip.new(john, bruges)
# david_bruges = Trip.new(david, bruges)

# frasier_show = Show.new("Frasier")
# jimbob_show = Show.new("Jimbob Show")
#
# kelsey_grammer = Actor.new('Kelsey Grammer')
# david_hyde_pierce = Actor.new('David Hyde Pierce')
# jane_leeves = Actor.new('Jane Leeves')
# john_mahoney = Actor.new('John Mahoney')
#
# frasier = Character.new('Frasier')
# niles = Character.new('Niles')
# martin = Character.new('Martin')
# daphne = Character.new('Daphne')
# jimbob = Character.new('Jimbob')
#
# frasier.show = frasier_show
# niles.show = frasier_show
# martin.show = frasier_show
# daphne.show = frasier_show
# jimbob.show = jimbob_show
#
# frasier.actor = kelsey_grammer
# niles.actor = david_hyde_pierce
# martin.actor = john_mahoney
# daphne.actor = jane_leeves
# jimbob.actor = kelsey_grammer

# flour = Ingredient.new("Flour", 110)
# eggs = Ingredient.new("Eggs", 200)
# butter = Ingredient.new("Butter", 50)
# marzipan = Ingredient.new("Marzipan", 300)
#
# cake = Dessert.new("Cake", flour, eggs)
# pudding = Dessert.new("Pudding", butter, marzipan)
# buns = Dessert.new("Buns", butter, eggs)
#
#
# fruity_buns = Bakery.new("Fruity Buns", cake, pudding, buns)

john = Passenger.new("John")
david = Passenger.new("David")
sarah = Passenger.new("Sarah")

jimmy = Driver.new("Jimmy")
thomas = Driver.new("Thomas")
alice = Driver.new("Alice")

london = Ride.new(john, thomas, 35)
brighton = Ride.new(david, alice, 54)
liverpool = Ride.new(sarah, thomas, 102)
birmingham = Ride.new(john, jimmy, 67)

Pry.start
