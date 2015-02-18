require 'array'

describe Array do
	it 'can update each of its elements'do
	expect([1,2,3,4].update_with(1) {|array, element| array * element}).to eq (24)
	end

	it 'can sum each of its elements' do
		expect([1,2,3,4].update_with(0){|array, element| array+element}).to eq 10
	end

	it 'can deduct each of its own elements' do
		expect([1,2,3,4].update_with(0){|array, element| array-element}).to eq -10
	end

	it 'can divide each of its own elements' do
		expect([30,60].update_with(1){|array, element| array/element}).to eq 2
	end


end