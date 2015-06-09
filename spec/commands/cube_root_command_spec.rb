require 'spec_helper'

describe CubeRootCommand do

	let(:receiver) { Object.new }
	let(:cube_root_command) { CubeRootCommand.new([]) }

	describe "execute" do

		it "should call the divide method on the object with the arguments" do
			expect(receiver).to receive(:cubert)
			cube_root_command.execute(receiver)
		end

	end

end
