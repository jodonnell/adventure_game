require './room_location'
require './room_descriptions'
require './commands'

class Adventure
  def initialize
    @room_location = RoomLocation.new 5, 5
    @room_descriptions = RoomDescriptions.new
    @commands = Commands.new @room_location
  end

  def print_room_description 
    if game_over?
      puts @room_descriptions.death_room
    else
      puts @room_descriptions.get_room(@room_location)
    end
  end

  def game_over?
    @room_descriptions.get_room(@room_location).length == 0
  end

  def start
    while 1
      puts @room_location.x
      puts @room_location.y

      print_room_description

      break if game_over?
      
      print '> '
      command = gets.chomp

      @commands.interpret_command command
    end
  end
end

adventure = Adventure.new
adventure.start
