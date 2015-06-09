# JOB: Indirect to negative operation
class NegativeCommand < BasicCommand

	def execute(receiver)
		receiver.neg(@arguments)
	end

end
