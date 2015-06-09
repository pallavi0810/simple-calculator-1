# JOB: Indirect to cube operation
class CubeCommand < BasicCommand

	def execute(receiver)
		receiver.cube(@arguments)
	end

end
