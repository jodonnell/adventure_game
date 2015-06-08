
current_room_x = 5
current_room_y = 5

while 1 # keep repeating the code in this block forever (or until the keyword break)

  # print out your room information
  if current_room_x == 5 and current_room_y == 5
    puts 'You are in a dark room.'
  elsif current_room_x == 5 and current_room_y == 4
    puts 'This room is sunny and pleasant.'
  else
    puts 'You have entered a room that should not exist.  You DIE.'
    break
  end

  # get command
  print '> '
  command = gets.chomp

  # intepret command
  if command == 'n' or command == 'north'
    current_room_y = current_room_y - 1
  elsif command == 's' or command == 'south'
    current_room_y = current_room_y + 1
  elsif command == 'w' or command == 'west'
    current_room_x = current_room_x - 1
  elsif command == 'e' or command == 'east'
    current_room_x = current_room_x + 1
  end
end

