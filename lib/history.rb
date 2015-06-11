#stores commands for the calculatoor
class History
	attr_reader :history_array
	
	def initialize
		@history_array = []
	end

	def add(command)
		@history_array << command
	end

	def show(range)
		@history_array.last(range)
	end
end