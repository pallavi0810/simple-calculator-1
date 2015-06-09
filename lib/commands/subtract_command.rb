class SubtractCommand < BasicCommand

	def execute
		@receiver.subtract(@arguments)
	end

end
