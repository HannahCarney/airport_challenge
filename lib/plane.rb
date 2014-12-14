class Plane

  def initialize
    @flyingplanes = true #plane cannot be created at airport
    @flyingplanes = []
    @landedplanes = []
  end

  def landing plane
    @landedplanes << plane
    @flyingplanes.delete(plane)
  end

  def landed?
  	@landedplanes = []
  end

  def fly!
  	@landedplanes = false
  	@flyingplanes = true
  end

  def land!
  	@landedplanes = true
  	@flyingplanes = false
  end 

  def flying?
  	@flyingplanes = true
  end

  def flying plane
  	@flyingplanes << plane
    @landedplanes.delete(plane)
  end

  def landed_plane_count
    @landedplanes.count
  end 

  def flying_plane_count
  	@flyingplanes.count
  end
 
end
