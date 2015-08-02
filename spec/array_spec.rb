require 'array'

describe Array do

	it { is_expected.to respond_to(:new_inject) }

	it 'expect new_inject to add numbers in array' do
		expect([1,2,3,4].new_inject(0) { |result, element| result + element }).to eq(10)
	end

end