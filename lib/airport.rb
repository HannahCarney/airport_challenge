class Airport
   DEFAULT_CAPACITY = 100


  def initialize(options = {})
    @planesForLanding = true
	@planesForTakeOff = true
	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	@planes = []
  end

  def planes_can_land?
	@planesForLanding
  end

  def planes_can_take_off?
	@planesForTakeOff 
  end

  def land planes
  	@planes << planes
  end 

  def full?
  	@full == @capacity
  end  

  def airport_full
  	200.times { airport.full(Airport.new) }
  end

end