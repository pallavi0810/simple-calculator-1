class AddCommand < BasicCommand

	def execute
		@receiver.add(@arguments)
	end
	
end
