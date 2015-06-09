# JOB: Indirect to absolute operation
class AbsoluteCommand < BasicCommand

	def execute(receiver)
		receiver.abs(@arguments)
	end

end
