
class Listing 

    attr_accessor :city_name

    def initialize(city_name)
        @city_name = city_name
    end

    #  this will return an array of all guests that have stayed at a listing
    def guests
        same_lists = Trip.all.select do  |trip|
            trip.listing == self 
        end
        same_lists.map { |trip| trip.guest}
    end
    def trips #returns an array of all trips taken by the self instance
        trips_taken = Trip.all.select do |trip|
            trip.listing == self
        end
        trips_taken.map { |trip| trip }
    end

        
    


end