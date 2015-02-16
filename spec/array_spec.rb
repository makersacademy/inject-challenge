require 'array'
require 'injection'

describe Array do

	let(:array){Array.new}

	it 'can sum 2 number up' do
		number1 = [1,2]
		expect(array.injection(number1,"sum")).to eq (3)
	end


end