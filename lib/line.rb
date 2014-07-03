#Returns the length of model line and checks the equality with another line
class Line
  def initialize(x1, y1, x2, y2)
    @x1=x1
    @y1=y1
    @x2=x2
    @y2=y2
  end
  def coordinates
    [@x1,@y1,@x2,@y2]
  end
  def length
    Math.sqrt((@x2-@x1)**2+(@y2-@y1)**2).to_i
  end
  def == line2
    coordinates=line2.coordinates
    (coordinates[0]==@x1 && coordinates[1]==@y1 && coordinates[2]==@x2 && coordinates[3]==@y2) || (coordinates[2]==@x1 && coordinates[3]==@y1 && coordinates[0]==@x2 && coordinates[1]==@y2)
  end
end
