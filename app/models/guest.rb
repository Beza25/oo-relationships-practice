class Guest
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name 
        @@all << self
    end

    # returns an array of all listings a guest has stayed at
    def listings 
        Trip.all.select {|trip| trip.guest == self}.map { |trip| trip.listing}

    end

    # returns an array of all trips a guest has made
    def trips
        Trip.all.select{ |trip| trip.guest == self}
    end

    # returns the number of trips a guest has taken
    def count 
        trips.length
    end


    # returns an array of all guests
    def self.all
        @@all
    end
    # returns an array of all guests who have made over 1 trip
    # check if the number of trip is more than one 
    # creat a hash with key == guest object and value  == number of trips 
    # return guests who have made more than one tip
    def self.pro_traveller
        traveller = {}
       
         
        Trip.all.map do |trip|
            if !traveller[trip.guest]
                traveller[trip.guest] = 1
            else
                traveller[trip.guest] += 1
              
            end
            traveller
        end

        pro = []
       traveller.each { |guest, num_listing| 
            if num_listing > 1
                pro << guest
            end
        }
    end
    
    #  takes an argument of a name (as a string), returns the all guests with that name
    def self.find_all_by_name(guest_name)
        Guest.all.select do |guest|   
             guest.name == guest_name 
          
        end

    end



end