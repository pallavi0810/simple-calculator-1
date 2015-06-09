# JOB: Base class for all the calculator command
class BasicCommand

	def initialize(arguments)
		@arguments = arguments
	end

	def execute(receiver)
		raise
	end

end
