require 'airport'
require 'plane'

describe Airport do

  let(:airport) {Airport.new}

  context 'taking off and landing' do

    it 'a plane can land' do #at the airport
    	expect(airport).to be_planes_can_land
    end

    it 'a plane can lake off' do
    	expect(airport).to be_planes_can_take_off
    end
end
end