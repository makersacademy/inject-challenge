require 'array'

describe Array do 

	it 'should be able to sum all elements in [1,2,3,4]' do
		expect([1,2,3,4].my_inject(0) {|result, element| result + element}).to eq(10)
	end

	it 'should be able to multiply all the elements in [5,6,7]' do
		expect([5,6,7].my_inject(1) {|result, element| result * element}).to eq(210)
	end

	it 'should have a default argument of zero if no argument is given' do
		expect([1].my_inject {|x, y| x + y}).to eq(1)
	end

	
end