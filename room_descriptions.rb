class RoomDescriptions
  def get_room room_location
    if room_location.x == 5 and room_location.y == 5
      'You are in a dark room.'
    elsif room_location.x == 5 and room_location.y == 4
      'This room is sunny and pleasant.'
    else
      ''
    end
  end

  def death_room
    'You have entered a room that should not exist.  You DIE.'
  end
end
