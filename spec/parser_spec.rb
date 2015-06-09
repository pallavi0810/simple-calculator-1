require 'spec_helper'

describe Parser do
	before(:each){@parser = Parser.new}
	context "parse" do

		it "should return an additon command" do
			expect(@parser.parse("add 5")).to be_instance_of(AddCommand)
		end

		it "should return a subtraction command" do
			expect(@parser.parse("subtract 5")).to be_instance_of(SubtractCommand)
		end

		it "should return a multiply command" do
			expect(@parser.parse("multiply 5")).to be_instance_of(MultiplyCommand)
		end

		it "should return a divide command" do
			expect(@parser.parse("divide 5")).to be_instance_of(DivideCommand)
		end

		it "should return a cancel command" do
			expect(@parser.parse("cancel")).to be_instance_of(CancelCommand)
		end

		it "should return a absolute command" do
			expect(@parser.parse("abs")).to be_instance_of(AbsoluteCommand)
		end

		it "should return a negative command" do
			expect(@parser.parse("neg")).to be_instance_of(NegativeCommand)
		end

		it "should return a square command" do
			expect(@parser.parse("sqr")).to be_instance_of(SquareCommand)
		end

		it "should return a square root command" do
			expect(@parser.parse("sqrt")).to be_instance_of(SquareRootCommand)
		end

		it "should return a cube command" do
			expect(@parser.parse("cube")).to be_instance_of(CubeCommand)
		end

		it "should return a cube root command" do
			expect(@parser.parse("cubert")).to be_instance_of(CubeRootCommand)
		end

		it "should return RepeatCommand object" do
			expect(@parser.parse("repeat 2")).to be_instance_of(RepeatCommand)
		end		

	end

end