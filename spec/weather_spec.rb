require 'weather'
require 'airport'

class Weather; include WeatherConditions; end

describe Weather do

	let(:weather) { Weather.new }
	let(:plane) { Plane.new }

	context 'Weather Conditions' do

		it 'a plane cannot take off when there is a storm brewing' do
			random!
			if @stormy == true
				expect(weather).to be_stormy
			else @stormy == false
				expect(weather).not_to be_stormy
			end
		end

		it 'a plane cannot land in the middle of a storm' do
			random!
			if @stormy == true
			  expect(weather).to be_stormy
		    else @stormy == false
		      expect(weather).not_to be_stormy
		    end
	    end
		
	end
end