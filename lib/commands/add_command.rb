# JOB: Indirect to addition operation
class AddCommand < BasicCommand

	def execute(receiver)
		@@history << self
		receiver.add(@arguments)
	end
	
end
