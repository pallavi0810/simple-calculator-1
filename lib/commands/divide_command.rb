# JOB: Indirect to division operation
class DivideCommand < BasicCommand

	def execute(receiver)
		receiver.divide(@arguments)
	end

end