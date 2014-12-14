class Plane

  def initialize 
    @planes = []
  end

  def landing plane
    @planes << plane
  end

  def takingoff plane
    planes.delete(plane)
  end

  def plane_count
    @planes.count
  end 
 

end
