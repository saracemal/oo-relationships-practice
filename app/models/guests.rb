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
   
    def guests
        self.trips.map{|trip| trip.listing}
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
        Trip.all.select{|trip| trip.guest == self}
    end

    def trip_count
        Trip.all.select{|trip| trip.guest == self}.count
    end

    def self.find_all_by_city(city)
        Listing.all.select(city)
    end
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


