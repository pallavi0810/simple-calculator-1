class DivideCommand < BasicCommand

	def execute
		@receiver.divide(@arguments)
	end

end