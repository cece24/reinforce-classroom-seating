classroom_seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

# Part 1
# Show free seats
classroom_seats.each_with_index do |row, row_index|
  row.each_with_index do |seat, seat_index|
    if seat == nil
      puts "Row #{ row_index + 1 } seat #{ seat_index + 1 } is free."
    end
  end
end
