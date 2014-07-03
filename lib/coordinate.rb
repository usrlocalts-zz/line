#represents a coordinate and checks its equality with another coordinate
class Coordinate
  def initialize x, y
    @x = x
    @y = y
  end

  def coordinate_variables
    [@x, @y]
  end

  def == coordinate
    coordinate2 = coordinate.coordinate_variables
    @x == coordinate2[0] && @y == coordinate2[1]
  end

end