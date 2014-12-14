class Weather
   
  def initialize
	if rand(1..10) == [1,2,3,4,5,6,7,8,9]
		@stormy = true
	else rand(1..10) == [10]
		@stormy = false
	end
  end

 

  def storm!
  	@sunny = false
  	@stormy = true
  end

  def sunny?
	@sunny == true
	@stormy == false
  end

  def stormy?
	@stormy == true
	@sunny == false
  end

end