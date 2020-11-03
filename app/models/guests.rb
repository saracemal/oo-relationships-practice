class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
   
    def listings
        self.trips.map{|trip| trip.listing}
    end

    def trips ##did this one first bc it was the joiner class
        Trip.all.select{|trip| trip.guest == self}
    end

    def trip_count
        self.trips.select{|trip| trip.guest}.count
    end

    def self.pro_traveller
        Guest.all.select {|guest| guest.trip_count > 1}
        ## how to check ?? Passenger.pro_traveller in terminal
    end

    def self.find_all_by_name(name)
        Guest.all.select(name)
    end




end

####LISTING####
class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        self.trips.map{|trip| trip.listing}
    end

    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def trip_count
        Trip.all.select{|trip| trip.guest == self}.count
    end

    def self.find_all_by_city(city)
        Listing.all.select(city)
    end

    def self.most_popular
        Listing.all.max_by {|listing| listing.trip_count}
end

######TRIP!!!!!#####
class Trip
    attr_accessor :listing, :guest

    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end
end


