class CancelCommand < BasicCommand

def execute
	@receiver.cancel
end	
end