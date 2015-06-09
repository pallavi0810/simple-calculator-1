require 'spec_helper'

describe AddCommand do

	# let(:receiver) { Object.new }
	# let(:repeat_command) { RepeatCommand.new([]) }

	describe "execute" do
		it "should return repeat object" do
			calculator = Calculator.new 
			add_command = AddCommand.new(6)
			add_command.execute(calculator)
			sub_command = SubtractCommand.new(2)
			sub_command.execute(calculator)
			repeat_command = RepeatCommand.new(2)	
			expect(repeat_command.execute(calculator)).to eq(8)
		end

	end

end
