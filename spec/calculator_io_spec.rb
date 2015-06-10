require 'spec_helper'

describe CalculatorIO do
  it "should call gets when its get_input method is called" do
    calculator_io = CalculatorIO.new
    allow(calculator_io.get_input).to receive(:gets)
   end

   it "should call puts when its return_output method is called" do
    calculator_io = CalculatorIO.new
    output = "output"
    allow(calculator_io.return_output(output)).to receive(:puts).with("output")
   end
end