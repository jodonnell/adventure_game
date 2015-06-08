class Commands
  def initialize room_location
    @room_location = room_location
  end
  
  def interpret_command command
    if command == 'n' or command == 'north'
      @room_location.north
    elsif command == 's' or command == 'south'
      @room_location.south
    elsif command == 'w' or command == 'west'
      @room_location.west
    elsif command == 'e' or command == 'east'
      @room_location.east
    end
  end
end
