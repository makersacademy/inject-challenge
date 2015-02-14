require 'array'

describe Array do 

	let(:array) {[1,2,3]}
	
	it 'should be able to sum an array of 1,2,3 with the answer 6' do
		expect(array.my_inject(0){|start,number|start+number}).to eq (6)
		expect(array.inject(0){|start,number|start+number}).to eq (6)
	end

	it 'should be able to sum an array of 2,3,4 with the answer 9' do
		array2 = [2,3,4]
		expect(array2.my_inject(0){|start,number|start+number}).to eq (9)
		expect(array2.inject(0){|start,number|start+number}).to eq (9)
	end

	it 'should be able to sum the squares of an array 1,2,3 with the answer 14' do
		expect(array.my_inject(0){|start,number|start+number**2}).to eq (14)
		expect(array.inject(0){|start,number|start+number**2}).to eq (14)
	end

	it "should return 0 if an empty array is passed" do
		array3 = []
		expect(array3.my_inject(0){|start,number|start+number}).to eq 0
		expect(array3.inject(0){|start,number|start+number}).to eq 0
	end

	it 'should accept no argument before the block' do
		expect(array.my_inject{|start,number|start+number}).to eq (6)
		expect(array.inject{|start,number|start+number}).to eq (6)
	end

	it 'should accept a symbol as an argument' do


	end

end