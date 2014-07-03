#Returns the length of model line and checks the equality with another line
class Line
  def initialize coordinate1, coordinate2
    @coordinate1=coordinate1
    @coordinate2=coordinate2
  end

  def coordinates
    [@coordinate1, @coordinate2]
  end

  def length
    Math.sqrt((@coordinate1.coordinate_variables[0]-@coordinate2.coordinate_variables[0])**2+(@coordinate1.coordinate_variables[1]-@coordinate2.coordinate_variables[1])**2).to_i
  end
  def == line2
    coordinates=line2.coordinates
    (@coordinate1 == coordinates[0] && @coordinate2 == coordinates[1])||(@coordinate1 == coordinates[1] && @coordinate2 == coordinates[0])
  end

end
