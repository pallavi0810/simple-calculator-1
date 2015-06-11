require 'spec_helper'

describe History do

	let(:history) { History.new }
	
	describe "execute" do

		it 'should store commands' do
			add_command = AddCommand.new(5)
			subtract_command = SubtractCommand.new(3)
			history.add(add_command)
			history.add(subtract_command)
			expect(history.show(2)).to eq([add_command,subtract_command])
		end

	end

end
