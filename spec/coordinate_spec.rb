require 'spec_helper'

describe Coordinate do
  context "equality" do
    it 'should be equal for 1,1 and 1,1' do
      coordinate1 = Coordinate.new(1, 1)
      coordinate2 = Coordinate.new(1, 1)

      expect(coordinate1).to eq(coordinate2)

    end
  end
end