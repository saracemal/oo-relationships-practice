require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'

sara = Guest.new("sara")
emina = Guest.new("emina")
tarik = Guest.new("tarik")

chicago = Listing.new("chicago")
berlin = Listing.new("berlin")
barcelona = Listing.new("barcelona")

trip_1 = Trip.new(berlin, sara)
trip_2 = Trip.new(barcelona, sara)
trip_3 = Trip.new(chicago, sara)
trip_4 = Trip.new(berlin, emina)
trip_5 = Trip.new(chicago, tarik)





binding.pry
