
class Listing 

    attr_accessor :city_name

    @@all = []

    def initialize(city_name)
        @city_name = city_name
        @@all << self
    end

    #  this will return an array of all guests that have stayed at a listing
    def guests
        same_lists = Trip.all.select do  |trip|
            trip.listing == self 
        end
        same_lists.map { |trip| trip.guest}
    end
    #returns an array of all trips at this Listing
    def trips 
        trips_taken = Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        trips.length
    end


    def self.all
        @@all
    end
    
    #giving a city name return the listing for that city /
    # of all the trip instances, we want to  return the listings at the city
    def self.find_all_by_city(city)   
       Listing.all.select do |list|
            list.city_name == city
       end      
    end

    # find the (listing) that has had the most trips
    def self.most_popular 
        frequency = {}
        Trip.all.select do |trip|
            if !frequency[trip.listing]
                frequency[trip.listing] = 1 
                    
            else
                frequency[trip.listing] += 1 
            end
        
        end
      
        var = frequency.max_by {|k,v| v }[0]

         
    end
    


end 