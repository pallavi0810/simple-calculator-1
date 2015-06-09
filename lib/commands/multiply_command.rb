# JOB: Indirect to multiplication operation
class MultiplyCommand < BasicCommand

	def execute(receiver)
		receiver.multiply(@arguments)
	end 
	
end
