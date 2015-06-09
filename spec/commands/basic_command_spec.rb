require 'spec_helper'

describe BasicCommand do

	let(:basic_command) { BasicCommand.new(Object.new, []) }

	it "should raise an error if the execute method is not defined" do
		expect{basic_command.execute}.to raise_error
	end

	end