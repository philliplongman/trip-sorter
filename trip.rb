class Trip
  attr_reader :flights

  def initialize(array)
    @unsorted_flights = build_flights(array)
    @flights = []
    sort_flights
  end

  def origin
    flights.first.depart
  end

  def destination
    flights.last.arrive
  end

  def itinerary
    # Return an array of the cities visited in the trip
  end

  private
  attr_reader :unsorted_flights
  attr_writer :flights

  def build_flights(array)
    array.map { |e| Flight.new(e.first, e.last) }
  end

  def sort_flights
    connect_flights until flights.count == unsorted_flights.count
  end

  def connect_flights
    unsorted_flights.each do |flight|
      flights.push(flight) if flights.empty? || flight.depart == destination
      flights.unshift(flight) if flight.arrive == origin
    end
  end
end
