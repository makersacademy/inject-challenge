require 'array'

describe Array do

let(:array) {Array.new}

		it 'can take an argument' do 
			expect(array).to receive(:my_inject).with(0)
			array.my_inject(0)
		end 

		# it 'can take a block' do
		# 	expect(array).to receive(:my_inject).with({"this is my block"})
		# 	array.my_inject(0){"this is my block"}
		# end

		it 'if not given an argument, it will assign the first element in the array as the argument' do 
			expect([1, 2, 3]).to receive(:my_inject)
			[1, 2, 3].my_inject
		end
	
end