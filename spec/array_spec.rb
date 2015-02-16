require 'array'
require 'injection'

describe Array do

	let(:array){Array.new}

	it 'can sum 2 number up' do
		# allow(array).to receive(:injection){"sum"}
		number1 = [1,2]
		operation = "sum"
		expect(array.injection(number1,"sum")).to eq (3)
	end


end