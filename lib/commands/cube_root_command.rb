# JOB: Indirect to cube root operation
class CubeRootCommand < BasicCommand

	def execute(receiver)
		receiver.cubert(@arguments)
	end

end
