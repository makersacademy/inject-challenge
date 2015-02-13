require 'inject'

describe Array do 

	arr = [1,2,3,4]

	it 'base case with real inject method' do
		expect(arr.inject(3) {|x,y| x * y}).to eq 72
	end

	it 'the re_inject method' do
			expect(arr.reinject(3) {|x, y| x * y}).to eq 72
	end

	it 'the re_inject method with subtraction' do
			expect(arr.reinject(1) {|x, y| x - y}).to eq -9
	end

	it 'the re_inject method with the spaceship' do
		expect(arr.inject(1) {|x,y| x <=> y}).to eq -1
	end

end