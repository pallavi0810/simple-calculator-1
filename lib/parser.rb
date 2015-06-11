# convert input string to command 
class Parser
	#ALLOWED_TOKENS = ["add", "subtract", "multiply", "divide", "cancel"]
	
	def parse(string)
		command_array = string.split
		command_name = command_array[0]
		argument = command_array[1]
		if argument.nil?
			parse_unary(command_name)
		else
			parse_binary(command_name,argument)
		end
	end

	def parse_binary(command_name,argument)
		return InvalidCommand.new([]) if argument.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) == nil
		case command_name 
		when 'add'
			AddCommand.new(argument.to_f)
		when 'subtract'
			SubtractCommand.new(argument.to_f)
		when 'multiply'
			MultiplyCommand.new(argument.to_f)
		when 'divide'
			DivideCommand.new(argument.to_f)
		when 'repeat'
			RepeatCommand.new(argument.to_i)
		else
			InvalidCommand.new([])
		end
	end

	def parse_unary(command_name)
		case command_name
		when 'cancel' 
			CancelCommand.new([])
		when  'sqr' 
			SquareCommand.new([])
		when  'sqrt' 
			SquareRootCommand.new([])
		when  'abs' 
			AbsoluteCommand.new([])
		when  'neg' 
			NegativeCommand.new([])
		when  'cube' 
			CubeCommand.new([])
		when  'cubert' 
			CubeRootCommand.new([])						
		when  'exit' 
			ExitCommand.new([])						
		else
			InvalidCommand.new([])
		end
	end

end
