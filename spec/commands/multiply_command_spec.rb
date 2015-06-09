require "spec_helper"

describe MultiplyCommand do

	let(:receiver) { Object.new }
	let(:multiply_command) { MultiplyCommand.new([]) }

	describe "execute" do

		it "should call the multiply method on the object with the arguments" do
			expect(receiver).to receive(:multiply)
			multiply_command.execute(receiver)
		end

	end

end
