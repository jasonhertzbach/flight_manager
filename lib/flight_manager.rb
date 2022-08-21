# frozen_string_literal: true

# rubocop:disable Style/Documentation
class FlightManager
  def initialize
    @flight_storage = []
  end
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
      if f.include?(origin) && f.include?(destination)
        if direction_sensitive
          flights << {flight_number: f[0], origin: f[1], destination: f[2]} if origin == f[1] && destination == f[2]
        else
          flights << {flight_number: f[0], origin: f[1], destination: f[2]}
        end
      end
    end
    flights
  end
end
# rubocop:enable Style/Documentation
