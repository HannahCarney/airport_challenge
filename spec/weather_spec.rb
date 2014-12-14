require 'weather'
require 'airport'
require 'plane'

describe Weather do

  let(:weather) { Weather.new }
  let(:plane) { Plane.new }

    context 'Weather Conditions' do

	  it 'a plane cannot take off when there is a storm brewing' do
		
	    if @stormy == true
		  expect(weather).to be_stormy
		  expect(plane.flying_plane_count).to eq(0)
		else @stormy == false
		  expect(weather).not_to be_stormy
		  plane.takingoff(plane)
		  expect(plane.flying_plane_count).to eq(1)
		end
	  end

      it 'a plane cannot land in the middle of a storm' do
			
        if @stormy == true
		  expect(weather).to be_stormy
		  expect(plane.landed_pane_count).to eq(0)
		else @stormy == false
		  expect(weather).not_to be_stormy
		  plane.landing(plane)
	      expect(plane.landed_plane_count).to eq(1)
		end
	  end		
	end
end