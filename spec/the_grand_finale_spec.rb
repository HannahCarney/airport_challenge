require 'plane'
require 'airport'

describe "The grand finale (last spec)" do

	let(:plane)  {Plane.new(:status)}


	it "all planes can land and all planes can take off" do
     plane.six(plane)   
     expect(plane.flying_plane_count).to eq(0)
     
     end
end
