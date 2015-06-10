# JOB: Iterate over history for a given number of times
class RepeatCommand < BasicCommand

	def execute(receiver)
		receiver.repeat(@arguments)
	end
	
end
