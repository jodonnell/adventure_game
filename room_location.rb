class RoomLocation
  attr_accessor :x, :y
  # above is the same as
  # def x
  #   @x
  # end
  # def y
  #   @y
  # end

  def initialize x, y
    @x = x
    @y = y
  end

  def north
    @y = @y - 1
  end

  def south
    @y = @y + 1
  end

  def west
    @x = @x - 1
  end

  def east
    @x = @x + 1
  end

end
