require 'inject'

describe Array do

	it 'can sum an array of numbers' do
		expect([1,2,3,4,5].inject_method(0) {|array, element| array + element}).to eq(15)
	end

	it 'can multiply an array of numbers' do
		expect([1,2,3,4,5].inject_method(1) {|array, element| array * element}).to eq(120)
	end

	it 'can subtract an array of numbers' do
		expect([1,2,3,4,5].inject_method(0) {|array, element| array - element}).to eq(-15)
	end

	it 'can divide an array of numbers' do
		expect([1,2,3,4,5].inject_method(0) {|array, element| array / element}).to eq(0)
	end
end