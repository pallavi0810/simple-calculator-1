require 'spec_helper'

describe ExitCommand do

	let(:receiver) { Object.new }
	let(:exit_command) { ExitCommand.new([]) }

	describe "execute" do

		it "should return exit" do
			exit_command.execute(receiver)
		end

	end

end
