# convert input string to arithmetic operation 
class Parser
	ALLOWED_TOKENS = ["add", "subtract", "multiply", "divide", "cancel"]
	# def initialize
	# 	@calculator = Calculator.new
	# end

	def parse(string)
		command_array = string.split
		command_name = command_array[0]
		argument = command_array[1]
		if command_name == "add"
			AddCommand.new(argument)
		elsif command_name == 'subtract'
			SubtractCommand.new(argument)
		elsif command_name == 'multiply'
			MultiplyCommand.new(argument)
		elsif command_name == 'divide'
			DivideCommand.new(argument)
		elsif command_name == 'cancel' && argument.nil?
			CancelCommand.new(argument)
		else
			BasicCommand.new(nil, [])
		end
	end
end
