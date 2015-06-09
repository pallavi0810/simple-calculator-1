class MultiplyCommand < BasicCommand

	def execute
		@receiver.multiply(@arguments)
	end 
	
end
