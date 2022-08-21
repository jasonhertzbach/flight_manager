# frozen_string_literal: true

# rubocop:disable Style/Documentation
class SeatsGenerator
  def create_seats(_rows, _seats_in_row, _first_row_number)
    seats = []
    row_numbers = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".chars
    # need to account for possibility of more seats then letters in alphabet
    (_first_row_number...(_first_row_number + _rows)).each { |i|
      _seats_in_row.times do |s|
        seats << "#{i}#{row_numbers[s]}"
      end
    }

    seats
  end
end
# rubocop:enable Style/Documentation
