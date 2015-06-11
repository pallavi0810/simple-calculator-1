# JOB: Returns 'invalid' for invalid operation
class InvalidCommand < BasicCommand

	def execute(receiver)
		'invalid'
	end
	
end
