classroom_seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

print classroom_seats
puts

# Part 1
# Show free seat
def show_free_seats(array_of_seats)
  array_of_seats.each_with_index do |row, row_index|
    row.each_with_index do |seat, seat_index|
      if seat == nil
        puts "Row #{ row_index + 1 } seat #{ seat_index + 1 } is free."
      end
    end
  end
end

# Part 2
# Ask user if they want free seat
def want_free_seat?(array_of_seats)
  array_of_seats.each_with_index do |row, row_index|
    user_name = nil

    row.each_with_index do |seat, seat_index|
      if seat == nil
        puts "Row #{ row_index + 1 } seat #{ seat_index + 1 } is free. Do you want to set there? (y/n)"
        want_seat = gets.chomp

        if want_seat == "y"
          puts "What is your name?"
          user_name = gets.chomp
          row[seat_index] = user_name
        end
      end

      if user_name
        user_name
        break
      end
    end

    if user_name != nil
      break
    end

  end
end

show_free_seats(classroom_seats)
want_free_seat?(classroom_seats)
show_free_seats(classroom_seats)

puts
print classroom_seats
