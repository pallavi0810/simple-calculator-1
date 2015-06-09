# JOB: Indirect to square operation
class SquareCommand < BasicCommand

	def execute(receiver)
		receiver.square(@arguments)
	end

end
