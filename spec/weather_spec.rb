require 'weather'
require 'airport'

class Weather; include WeatherConditions; end

describe Weather do

	let(:weather) { Weather.new }
	let(:plane) { Plane.new }

	context 'weather conditions' do

		it 'a plane cannot take off when there is a storm brewing' do
			weather.storm!
			expect(weather).to be_stormy
		end

		it 'a plane cannot land in the middle of a storm' do
			weather.storm!
			expect(weather).to be_stormy
		end
		
	end
end