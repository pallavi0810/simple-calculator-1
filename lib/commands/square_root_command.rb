# JOB: Indirect to square root operation
class SquareRootCommand < BasicCommand

	def execute(receiver)
		receiver.square_root(@arguments)
	end

end
