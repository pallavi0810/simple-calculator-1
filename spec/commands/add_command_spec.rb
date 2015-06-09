require 'spec_helper'

describe AddCommand do

	let(:receiver) { Object.new }
	let(:add_command) { AddCommand.new([]) }

	describe "execute" do

		it "should call the add method on the object with the arguments" do
			expect(receiver).to receive(:add)
			add_command.execute(receiver)
		end

	end

end
