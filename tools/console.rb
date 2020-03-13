require_relative '../config/environment.rb'

g1 = Guest.new ("Boby")
g2 = Guest.new("Lili")
g3 = Guest.new ("Lucy")

ls1 = Listing.new("MD")
ls2 = Listing.new("DC")
ls3 = Listing.new("NY")

t1 = Trip.new(ls2 , g1)
t2 = Trip.new(ls2, g3)
t3 = Trip.new(ls3, g2)
t4 = Trip.new(ls1, g1)

binding.pry




# def reload
#   load 'config/environment.rb'
# end
# class Guest
#   attr_accessor :name

#   def initialize (name)
#       @name = name 
#   end



# end
# class Listing 

#   attr_accessor :city_name

#   def initialize(city_name)
#       @city_name = city_name
#   end

#   def guests # this will return an array of all guests that have stayed at a listing
#       var = Trip.all.select do |trip|
         
#       end
#   end


# end

# class Trip
#   attr_accessor :listing, :guest

#   @@all =[]

#   def initialize(listing, guest)
#       @listing = listing
#       @guest = guest
#       @@all << self
#   end

#   def self.all
#       @@all
#   end
# end













