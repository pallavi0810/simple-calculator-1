require 'spec_helper'

describe SquareRootCommand do

	let(:receiver) { Object.new }
	let(:square_root_command) { SquareRootCommand.new([]) }

	describe "execute" do

		it "should call the square_root method on the object with the arguments" do
			expect(receiver).to receive(:sqrt)
			square_root_command.execute(receiver)
		end

	end

end
