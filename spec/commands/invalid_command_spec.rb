require 'spec_helper'

describe AddCommand do

	let(:receiver) { Object.new }
	let(:invalid_command) { InvalidCommand.new([]) }

	describe "execute" do

		it "should return invalid" do
			invalid_command.execute(receiver)
		end

	end

end
