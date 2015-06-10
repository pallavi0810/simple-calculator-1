# JOB: Indirect to addition operation
class AddCommand < BasicCommand

	def execute(receiver)
		receiver.add(@arguments)
	end
	
end
