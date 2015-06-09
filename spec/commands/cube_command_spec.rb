require 'spec_helper'

describe CubeCommand do

	let(:receiver) { Object.new }
	let(:cube_command) { CubeCommand.new([]) }

	describe "execute" do

		it "should call the divide method on the object with the arguments" do
			expect(receiver).to receive(:cube)
			cube_command.execute(receiver)
		end

	end

end
