require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Airbnb testing
def airbnb
  bob = Guest.new("Bob")
  matt = Guest.new("Matt")
  jeff = Guest.new("Jeff")

  listing1 = Listing.new("23 Kings Cross", "London")
  listing2 = Listing.new("23 Kings Cross", "London")
  listing3 = Listing.new("35 Piccadilly Circus", "London")
  listing4 = Listing.new("54 Rainy Rd", "Seattle")
  listing5 = Listing.new("3 Bagel St", "New York")
  listing6 = Listing.new("13 Peachtree Ave", "Atlanta")

  trip1 = Trip.new(listing1, bob)
  trip2 = Trip.new(listing2, matt)
  trip3 = Trip.new(listing3, jeff)
  trip4 = Trip.new(listing4, matt)
  trip5 = Trip.new(listing5, jeff)
  trip6 = Trip.new(listing6, bob)
  binding.pry
end

# Lyft testing
def lyft
  bob = Passenger.new("Bob")
  matt = Passenger.new("Matt")
  jeff = Passenger.new("Jeff")

  driver1 = Driver.new("Jacob")
  driver2 = Driver.new("Chris")
  driver3 = Driver.new("Erik")
  driver4 = Driver.new("Wyatt")

  ride1 = Ride.new(bob, driver1, 15.5)
  ride2 = Ride.new(bob, driver3, 50.4)
  ride3 = Ride.new(bob, driver2, 40.6)
  ride4 = Ride.new(matt, driver2, 101.2)

  binding.pry
end

# Bakery testing
def bakery
  claudias_cakes = Bakery.new("Claudias Cakes")
  ians_buns = Bakery.new("Ians Buns")

  flour = Ingredient.new("Flour", 364)
  egg = Ingredient.new("Egg", 155)
  egg_white = Ingredient.new("Egg White", 52)
  sugar = Ingredient.new("Sugar", 387)
  butter = Ingredient.new("Butter", 717)
  choc_chips = Ingredient.new("Chocolate Chips", 546)
  choc_sprinkles = Ingredient.new("Chocolate Sprinkles", 546)
  coloring = Ingredient.new("Food Dye", 0)

  choc_chip_muffin = Dessert.new(ians_buns, "Chocolate Chip Muffin", flour, egg, sugar, choc_chips)
  sponge_cake = Dessert.new(ians_buns, "Sponge Cake", flour, egg, sugar, butter)
  red_velvet_cake = Dessert.new(claudias_cakes, "Red Velvet Cake", flour, egg, sugar, butter, coloring)

  binding.pry
end

# Crowdfunding testing
def crowdfunding
  jeff = User.new("Jeff")
  bob = User.new("Bob")
  matt = User.new("Matt")

  jeff.create_project("Best Coffee", 20000)


  binding.pry
end

Pry.start
