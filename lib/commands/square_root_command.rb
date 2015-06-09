# JOB: Indirect to square root operation
class SquareRootCommand < BasicCommand

	def execute(receiver)
		receiver.sqrt(@arguments)
	end

end
