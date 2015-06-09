require 'spec_helper'

describe NegativeCommand do

	let(:receiver) { Object.new }
	let(:negative_command) { NegativeCommand.new([]) }

	describe "execute" do

		it "should call the divide method on the object with the arguments" do
			expect(receiver).to receive(:neg)
			negative_command.execute(receiver)
		end

	end

end
