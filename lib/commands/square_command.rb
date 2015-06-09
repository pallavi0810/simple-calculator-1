# JOB: Indirect to square operation
class SquareCommand < BasicCommand

	def execute(receiver)
		receiver.sqr(@arguments)
	end

end
