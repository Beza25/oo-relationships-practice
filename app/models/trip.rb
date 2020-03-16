class Trip
    attr_accessor :listing, :guest

    @@all =[]

    def initialize(listing, guest)
      
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end

    # returns the listing object for the trip
    def listings
        Trip.all.select do |trip| 
           trip.listing == self.listing
        end.map{ |trip| trip.listing}
    end

    def guests
        Trip.all.select do |trip| 
            trip.guest == self.guest
        end.map{ |trip| trip.guest}
    end





end