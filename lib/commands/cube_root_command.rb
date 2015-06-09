# JOB: Indirect to cube root operation
class CubeRootCommand < BasicCommand

	def execute(receiver)
		receiver.cube_root(@arguments)
	end

end
