# frozen_string_literal: true

# rubocop:disable Style/Documentation
class FlightManager
  @flight_storage = []
  def add_new_flight(flight_number, origin, destination)
    flight = [flight_number, origin, destination]
    unless @flight_storage.include?(flight)
      @flight_storage << flight
      return true
    end
    false
  end

  def find_flights_between(origin, destination, direction_sensitive)
    flights = []
    @flight_storage.each do |f|
      f.include?(origin) && f.include?(destination)
      flights << {flight_number: f[0], origin: f[1], destination: f[2]}
    end
    flights
  end
end
# rubocop:enable Style/Documentation
