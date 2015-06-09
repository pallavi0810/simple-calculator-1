require 'spec_helper'

describe SubtractCommand do

	let(:receiver) { Object.new }
	let(:subtract_command) { SubtractCommand.new(receiver, []) }

	describe "execute" do

		it "should call the subtract method on the object with the arguments" do
			expect(receiver).to receive(:subtract)
			subtract_command.execute
		end

	end

end
