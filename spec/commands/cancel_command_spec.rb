require "spec_helper"

describe CancelCommand do

	let(:receiver) { Object.new }
	let(:cancel_command) { CancelCommand.new([]) }

	describe "execute" do

		it "should call the cancel method on the object" do
			expect(receiver).to receive(:cancel)
			cancel_command.execute(receiver)
		end

	end

end