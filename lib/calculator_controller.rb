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
			if(input == 'exit')
				break
			end
			command =  @parser.parse(input)
			output = command.execute(@calculator)
			@calculator_io.return_output(output)
		end
	end
end