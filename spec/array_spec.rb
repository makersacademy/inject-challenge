require 'array'

describe Array do

	it { is_expected.to respond_to(:new_inject) }

	it 'expect new_inject to add numbers in array' do
		expect([1,2,3,4].new_inject { |result, element| result + element }).to eq(10)
	end

	it 'expect new_inject to add strings in an array together' do
		expect(['I', 'hope', 'this', 'works'].new_inject { |result, element| result + ' ' + element}).to eq('I hope this works')
	end

	it 'expect new_inject to create a new array' do
		expect([1,2,3,4,5,6,7,8,9,10].new_inject([]) do |result, element|
			result << element if element % 2 == 0
			result
		end).to eq([2,4,6,8,10])
	end

	it 'expect new_inject to return the product of numbers with argument' do
		expect([4,5,6].new_inject(10) { |result, element| result * element }).to eq(1200)
	end

end