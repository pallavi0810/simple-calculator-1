# JOB: Indirect to subtraction operation
class SubtractCommand < BasicCommand

	def execute(receiver)
		@@history << self
		receiver.subtract(@arguments)
	end

end
