# Controller for Calculator
class CalculatorController

	def initialize
		@parser = Parser.new
		@calculator = Calculator.new
		@calculator_io = CalculatorIO.new
	end

	def start
		while true do 
			input = @calculator_io.get_input
			command =  @parser.parse(input)
			if(command.class == ExitCommand)
				break
			end
			output = @calculator.operate(command)
			@calculator_io.return_output(output)
		end
	end
end