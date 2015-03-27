require 'Injection'

describe Injection do

	let(:injection){Injection.new}


	it 'can sum the numbers 1 and 2 stored in an array' do
		number1 = [1,2]
		expect(injection.add(number1)).to eq (3)
	end


	it 'can sum 3 numbers stored in an array' do
		number2 = [1,2,3]
		expect(injection.add(number2)).to eq (6)
	end


	it 'can sum 4 numbers stored in an array' do
		number3 = [1,2,3,4]
		expect(injection.add(number3)).to eq (10)
	end


	it 'can multiply 2 numbers stored in an array' do
		number1 = [1,2]
		expect(injection.multiply(number1)).to eq (2)
	end


	it 'can multiply 2 numbers stored in an array' do
		number2 = [1,2,3]
		expect(injection.multiply(number2)).to eq (6)
	end


	it 'can multiply 2 numbers stored in an array' do
		number3 = [1,2,3,4]
		expect(injection.multiply(number3)).to eq (24)
	end

	end