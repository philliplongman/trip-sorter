class Flight
  attr_reader :depart, :arrive

  def initialize(depart, arrive)
    @depart = depart
    @arrive = arrive
  end
end
