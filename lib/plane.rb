class Plane

  def initialize 
    @flyingplanes = []
    @landedplanes = []
  end

  def landing plane
    @landedplanes << plane
    @flyingplanes.delete(plane)
  end

  def takingoff plane
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

