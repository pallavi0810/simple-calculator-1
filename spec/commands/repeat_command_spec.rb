require 'spec_helper'

describe RepeatCommand do
	
	let(:receiver) { Object.new }
	let(:repeat_command) { RepeatCommand.new([]) }

	describe "execute" do
		it "should call the repeat method on the object with the arguments" do
			expect(receiver).to receive(:repeat)
			repeat_command.execute(receiver)
		end

	end

end
