require 'plane'


describe Plane do
  let(:plane) {Plane.new(:status)}

  it 'has a flying status when created' do
  	expect(plane).to be_flying
  	expect(plane.planes_flying).to eq("Status: Flying")
  end
  it 'has a flying status when in the air' do
  	plane.land!
    plane.fly!  	
  	expect(plane).to be_flying
  end

  it 'can take off' do
  	plane.landing(plane)
  	expect(plane).to be_landed
  	expect(plane.flying_plane_count).to eq(0)
  	plane.flying(plane)
  	expect(plane.flying_plane_count).to eq(1)
 
  end

  it 'changes its status to flying after taking off' do
    plane.land!
    expect(plane.planes_landed).to eq("Status: Landed")
    plane.fly!
    expect(plane).to be_flying
  end

end