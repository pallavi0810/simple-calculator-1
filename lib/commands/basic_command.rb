class BasicCommand

	def initialize(receiver, arguments)
		@receiver = receiver
		@arguments = arguments
	end

	def execute
		raise
	end

end
