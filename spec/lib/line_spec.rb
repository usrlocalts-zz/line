require 'spec_helper'

context Line do
  context "should return correct length" do


    it "should return length as 1 for (1,1) and (2,1)" do
      line = Line.new(Coordinate.new(1, 1),Coordinate.new(2, 1))
      expect(line.length).to eq(1)
    end
    it "should return length as 4 for (1,2) and (1,6)" do
      line = Line.new(Coordinate.new(1, 2),Coordinate.new(1, 6))
      expect(line.length).to eq(4)
    end
    it "should return length as 5 for (2,7) and (5,3)" do
      line = Line.new(Coordinate.new(2, 7),Coordinate.new(5, 3))
      expect(line.length).to eq(5)
    end
    it "should return length as 5 for (3, 4) and (7,9)" do
      line = Line.new(Coordinate.new(3, 4),Coordinate.new(7, 9))
      expect(line.length).to eq(6)
    end
  end

  context "should return length as 0 " do
    it "for same pair of coordinates" do
      line = Line.new(Coordinate.new(3, 4),Coordinate.new(3, 4))
      expect(line.length).to eq(0)
    end
  end

  context "equality" do

    it "two lines with coordinates (1,1) and (2,2) and (1,1) and (2,2) are equal" do


      line1 = Line.new(Coordinate.new(1, 1),Coordinate.new(2, 2))
      line2 = Line.new(Coordinate.new(1, 1),Coordinate.new(2, 2))

      expect(line1).to eq(line2)
    end
    it "two lines with coordinates (1,1) and (2,2) and (5,1) and (2,6) are not equal" do
      line1 = Line.new(Coordinate.new(1, 1),Coordinate.new(2, 2))
      line2 = Line.new(Coordinate.new(5, 1),Coordinate.new(2, 6))

      expect(line1).to_not eq(line2)
    end
    it "two lines with coordinates (1,1) and (2,2) and (1,1) and (2,2) are equal" do
      line1 = Line.new(Coordinate.new(1, 1),Coordinate.new(2, 2))
      line2 = Line.new(Coordinate.new(2, 2),Coordinate.new(1, 1))

      expect(line1).to eq(line2)
    end
  end
end