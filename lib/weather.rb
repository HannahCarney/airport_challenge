module WeatherConditions

 
  def random(options = {})
	@random = options.fetch.random[:sunny => sunny,:stormy => stormy]
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