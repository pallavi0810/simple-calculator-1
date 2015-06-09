require 'spec_helper'

describe AbsoluteCommand do

	let(:receiver) { Object.new }
	let(:absolute_command) { AbsoluteCommand.new([]) }

	describe "execute" do

		it "should call absolute method on the object with the arguments" do
			expect(receiver).to receive(:abs)
			absolute_command.execute(receiver)
		end

	end

end
