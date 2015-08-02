require 'array'

describe Array do

	it { is_expected.to respond_to(:new_inject) }

	it 'expect new_inject to add numbers in array' do
		expect([1,2,3,4].new_inject { |result, element| result + element }).to eq(10)
	end

	it 'expect new_inject to add strings in an array together' do
		expect(['I', 'hope', 'this', 'works'].new_inject { |result, element| result + ' ' + element}).to eq('I hope this works')
	end

end