require 'array'

describe Array do 



it 'should be able to sum an array of 3 numbers' do
	array = [1,2,3]
expect(array.my_inject(0){|start,number|start+number}).to eq (6)
end


	
end