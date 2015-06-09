# JOB: Iterate over history for a given number of times
class RepeatCommand < BasicCommand

	def execute(receiver)
		value = nil
		@@history.last(@arguments).each{ |command| value = command.execute(receiver) }
		value
	end
	
end
