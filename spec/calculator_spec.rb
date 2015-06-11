require 'spec_helper'

describe Calculator do
	before(:each)  {@calculator = Calculator.new }
	context 'Addition' do
		it "should return 6 when 6 is asked to be added" do
			expect(@calculator.add(6)).to eq(6.0)
		end

		it "should return 11 when 5 is added after 6 is added" do
			@calculator.add(6)
			expect(@calculator.add(5)).to eq(11.0)
		end
	end
	
	context 'Subtraction' do
		it "should return -4 when 4 is subtracted" do
			expect(@calculator.subtract(4)).to eq(-4)
		end

		it "should return 2 when -6 is subtracted from -4" do
			@calculator.add(-4)
			expect(@calculator.subtract(-6)).to eq(2)
		end
	end

	context 'Multiplication' do
		it "should return 0 when 4 is multiplied" do
			expect(@calculator.multiply(4)).to eq(0)
		end

		it "should return 6 when 2 is added and 3 is multiplied" do
			@calculator.add(2)
			expect(@calculator.multiply(3)).to eq(6)
		end
	end

	context 'Division' do
		it "should return 0 when divided by 4" do
			expect(@calculator.divide(4)).to eq(0)
		end

		it "should return 3 when 6 is added and result is then divided by 2" do
			@calculator.add(6)
			expect(@calculator.divide(2)).to eq(3)
		end

		it "should raise ZeroDivisionError when divided by zero" do
			expect{ @calculator.divide(0) }.to raise_error(ZeroDivisionError)
		end
	end

	context 'Absolute' do
		it "should return 4 for Absolute 4" do
			@calculator.add(4)
			expect(@calculator.abs).to eq(4)
		end

		it "should return 4 for Absolute -4" do
			@calculator.subtract(4)
			expect(@calculator.abs).to eq(4)
		end
	end

	context 'Negative' do
		it "should return -4 for Negative of 4" do
			@calculator.add(4)
			expect(@calculator.neg).to eq(-4)
		end
	end

	context 'Square' do
		it "should return 16 for square of 4" do
			@calculator.add(4)
			expect(@calculator.sqr).to eq(16)
		end
	end

	context 'Square root' do
		it "should return 2 for square of 4" do
			@calculator.add(4)
			expect(@calculator.sqrt).to eq(2)
		end
	end

	context 'cube' do
		it "should return 64 for cube of 4" do
			@calculator.add(4)
			expect(@calculator.cube).to eq(64)
		end
	end

	context 'cube root' do
		it "should return 4 for cube of 64" do
			@calculator.add(64)
			expect(@calculator.cubert).to eq(4)
		end
	end

	context 'Cancel' do
		it "should return 0" do
			expect(@calculator.cancel).to eq(0)
		end
	end

	context 'Operate' do
		it 'should execute the command' do
			add_command = AddCommand.new(5)
			expect(@calculator.operate(add_command)).to eq(5)
		end
	end

	context 'Add to History' do
		it 'should be able to add commands to its history' do
			add_command = AddCommand.new(5)
			@calculator.add_to_history(add_command)
			subtract_command = SubtractCommand.new(3)
			expect(@calculator.add_to_history(subtract_command)).to eq([add_command,subtract_command])
		end
	end

	context 'Repeat' do
		it "should repeat the last 2 commands given repeat(2)" do
			add_command = AddCommand.new(5)
			@calculator.operate(add_command)
			subtract_command = SubtractCommand.new(3)
			@calculator.operate(subtract_command)
			expect(@calculator.repeat(2)).to eq(4)
		end
	end

end