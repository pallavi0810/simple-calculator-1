require "spec_helper"

describe DivideCommand do

	let(:receiver) { Object.new }
	let(:divide_command) { DivideCommand.new(receiver, []) }

	describe "execute" do

		it "should call the divide method on the object with the arguments" do
			expect(receiver).to receive(:divide)
			divide_command.execute
		end

	end

end
