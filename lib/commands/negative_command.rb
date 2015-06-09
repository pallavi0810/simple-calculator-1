# JOB: Indirect to negative operation
class NegativeCommand < BasicCommand

	def execute(receiver)
		receiver.negative(@arguments)
	end

end
