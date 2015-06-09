require 'spec_helper'

describe SquareCommand do

	let(:receiver) { Object.new }
	let(:square_command) { SquareCommand.new([]) }

	describe "execute" do

		it "should call the square method on the object with the arguments" do
			expect(receiver).to receive(:sqr)
			square_command.execute(receiver)
		end

	end

end
