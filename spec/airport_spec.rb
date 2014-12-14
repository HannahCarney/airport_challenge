require 'airport'
require 'plane'

describe Airport do

  let(:airport) { Airport.new(capacity: 200) }
  let(:plane) { Plane.new }

  context 'taking off and landing' do

    it 'a plane can land' do #at the airport
    	expect(airport).to be_planes_can_land
    end

    it 'a plane can lake off' do
    	expect(airport).to be_planes_can_take_off
    end
end

  context 'traffic control' do

    it 'a plane cannot land if the airport is full' do
    	airport_full, airport_not_full = Airport.new, Airport.new
        expect(airport).not_to be_full
    end


	

end
end