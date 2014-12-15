class Plane

DEFAULT_STATUS = "Flying"

  def initialize
  	
   planes_flying == true #plane cannot be created at airport
    @flyingplanes = []
    @landedplanes = []
  end

  def landing plane
    @landedplanes << plane
    @flyingplanes.delete(plane)
    planes_landed
  end

  def flying plane
  	@flyingplanes << plane
    @landedplanes.delete(plane)
    planes_flying
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

  def landed_plane_count
    @landedplanes.count
  end 

  def flying_plane_count
  	@flyingplanes.count
  end

  def planes_flying
  	@status = puts "Flying"
  end 

  def planes_landed
  	@status = puts "Landed"
  end
end
