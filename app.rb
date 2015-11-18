require "pry"

require_relative "flight"
require_relative "trip"

FLIGHTS = [
  ["CHI", "NYC"],
  ["BOS", "CHI"],
  ["BEJ", "LON"],
  ["NYC", "BEJ"]
]

illogical_trip = Trip.new(FLIGHTS)
binding.pry
puts
