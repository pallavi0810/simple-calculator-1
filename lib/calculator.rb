# Performs simple arithmetic operations
class Calculator
	def initialize
		@value = 0
		@history = History.new
	end

	def add(operand)
		@value = @value + operand
 	end

 	def subtract(operand)
		@value = @value - operand
 	end

 	def multiply(operand)
		@value = @value * operand
 	end

 	def divide(operand)
		@value = @value / operand
 	end

 	def abs(operand = nil)
 		@value = @value.abs
 	end

	def neg(operand = nil)
 		self.multiply(-1)
 	end

 	def sqr(operand = nil)
 		self.multiply(@value)
 	end

 	def sqrt(operand = nil)
 		@value = Math.sqrt(@value)
 	end

 	def cube(operand = nil)
 		@value = @value ** 3
 	end

 	def cubert(operand = nil)
 		@value = Math.cbrt(@value)
 	end

 	def cancel(operand = nil)
 		@value = 0
 	end

 	def operate(command)
 		result = command.execute(self)
 		add_to_history(command)
 		result
 	end

 	def add_to_history(command)
 		excluded_commands = [InvalidCommand,RepeatCommand]
 		unless excluded_commands.include? command.class
 			@history.add(command)
 		end
 	end
 	
 	def repeat(operand)
 		value = 0
 		@history.show(operand).each{ |command| value = command.execute(self) }
 		value
 	end

end