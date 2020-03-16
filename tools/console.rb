require_relative '../config/environment.rb'

g1 = Guest.new ("Boby")
g2 = Guest.new("Lili")
g3 = Guest.new ("Lucy")
g4 = Guest.new("Boby")

ls1 = Listing.new("MD")
ls2 = Listing.new("DC")
ls3 = Listing.new("NY")
ls4 = Listing.new("DC")


t1 = Trip.new(ls2 , g1)
t2 = Trip.new(ls2, g3)
t3 = Trip.new(ls3, g2)
t4 = Trip.new(ls1, g1)
t5 = Trip.new(ls3, g3)

binding.pry 
 
















