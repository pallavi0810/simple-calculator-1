require 'spec_helper'

describe CalculatorIO do
	it "should call gets when its get_input method is called" do
		calculator_io = CalculatorIO.new
		expect_any_instance_of(Kernel).to receive(:gets).and_return("add 5")
		calculator_io.get_input
	end

	it "should call puts when its return_output method is called" do
		calculator_io = CalculatorIO.new
		output = "5.0"
		expect_any_instance_of(Kernel).to receive(:puts).with("5.0")
		calculator_io.return_output(output)
	end
end