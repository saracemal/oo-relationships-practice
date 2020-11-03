require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end


require 'pry'

chicago = Listing.new("chicago")
berlin = Listing.new("berlin")
barcelona = Listing.new("barcelona")

sara = Guest.new("sara")
emina = Guest.new("emina")
tarik = Guest.new("tarik")

trip_1 = Trip.new(berlin, sara)
trip_2 = Trip.new(barcelona, sara)
trip_3 = Trip.new(chicago, sara)
trip_4 = Trip.new(berlin, emina)
trip_5 = Trip.new(chicago, tarik)

# Listing.all --> put all listings

