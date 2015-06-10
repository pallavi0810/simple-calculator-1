# JOB: Indirect to subtraction operation
class SubtractCommand < BasicCommand

	def execute(receiver)
		receiver.subtract(@arguments)
	end

end
