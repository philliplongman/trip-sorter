class Trip
  attr_reader :flights

  def initialize (array)
    @flights = array.map do |flight|
      depart = flight.first
      arrive = flight.last
      Flight.new(depart, arrive)
    end
  end

  def origin
    @flights.first.depart
  end

  def destination
    @flights.last.arrive
  end
end
