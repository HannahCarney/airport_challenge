class Airport

	def initialize
		@planesForLanding = true
		@planesForTakeOff = true
	end

	def planes_can_land?
		@planesForLanding
	end

	def planes_can_take_off?
		@planesForTakeOff 
	end



end