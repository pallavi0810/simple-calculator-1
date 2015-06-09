class CancelCommand < BasicCommand

	def execute(receiver)
		receiver.cancel
	end	
end