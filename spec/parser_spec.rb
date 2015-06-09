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

	end

end