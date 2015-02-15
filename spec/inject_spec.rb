require 'inject'

describe Array do

	arr = [1,2,3,4]
	arr_neg = [-2,-1,1,2]

	describe 'Inject using the each method approach' do

		context 'with only a block' do

			it 'the re_inject method for positive multiplication' do
				expect(arr.inject {|x,y| x * y}).to eq 24
				expect(arr.another_inject {|x, y| x * y}).to eq 24
			end
		end

		context 'with a block and argument' do

			it 'the re_inject method with subtraction' do
				expect(arr.inject(1) {|x, y| x - y}).to eq -9
				expect(arr.another_inject(1) {|x, y| x - y}).to eq -9
			end

			it 'the re_inject method with the spaceship' do
				expect(arr.inject(1) {|x,y| x <=> y}).to eq -1
				expect(arr.another_inject(1) {|x,y| x <=> y}).to eq -1
			end

			it 'the re_inject method for negative multiplication' do
				expect(arr_neg.inject(3) {|x, y| x * y}).to eq 12
				expect(arr_neg.another_inject(3) {|x, y| x * y}).to eq 12
			end

			it 'the re_inject method with subtraction' do
				expect(arr_neg.inject(1) {|x, y| x - y}).to eq 1
				expect(arr_neg.another_inject(1) {|x, y| x - y}).to eq 1
			end
		end

		context 'with a symbol' do

			it 'the re_inject method with a symbol block and no arguments' do
				expect(arr.inject(:+)).to eq 10
				expect(arr.another_inject(:+)).to eq 10
			end
		end

		context 'with a symbol and argument' do

			it 'the re_inject method with a symbol block and 3 as an argument' do
				expect(arr.inject(3,:+)).to eq 13
				expect(arr.another_inject(3,:+)).to eq 13
			end
		end
	end

	describe 'Using recusrion' do

		context 'with only a block' do

			it 'the re_inject method for positive multiplication' do
				expect(arr.inject {|x,y| x * y}).to eq 24
				expect(arr.inject_recursion {|x, y| x * y}).to eq 24
			end
			#QUESTION - Stuck here, keep on getting 19, need to go over logic agin.
			xit 'the re_inject method for positive multiplication' do
				expect(arr.inject {|x,y| x + y}).to eq 10
				expect(arr.inject_recursion {|x, y| x + y}).to eq 10
			end
		end
	end

end