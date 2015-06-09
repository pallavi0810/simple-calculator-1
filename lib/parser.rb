# convert input string to arithmetic operation 
class Parser
	#ALLOWED_TOKENS = ["add", "subtract", "multiply", "divide", "cancel"]
	# def initialize
	# 	@calculator = Calculator.new
	# end

	def parse(string)
		command_array = string.split
		command_name = command_array[0]
		argument = command_array[1]
		if command_name == "add"
			AddCommand.new(argument.to_f)
		elsif command_name == 'subtract'
			SubtractCommand.new(argument.to_f)
		elsif command_name == 'multiply'
			MultiplyCommand.new(argument.to_f)
		elsif command_name == 'divide'
			DivideCommand.new(argument.to_f)
		elsif command_name == 'cancel' && argument.nil?
			CancelCommand.new(argument)
		elsif command_name == 'sqr' && argument.nil?
			SquareCommand.new(argument)
		elsif command_name == 'sqrt' && argument.nil?
			SquareRootCommand.new(argument)
		elsif command_name == 'abs' && argument.nil?
			AbsoluteCommand.new(argument)
		elsif command_name == 'neg' && argument.nil?
			NegativeCommand.new(argument)
		elsif command_name == 'cube' && argument.nil?
			CubeCommand.new(argument)
		elsif command_name == 'cubert' && argument.nil?
			CubeRootCommand.new(argument)						
		elsif command_name == 'repeat'
			RepeatCommand.new(argument.to_i)
		else
			BasicCommand.new(nil, [])
		end
	end
end
