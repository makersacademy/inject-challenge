require 'inject'

describe Array do

	let(:array){Array.new}

	it 'can sum an array of numbers' do
		expect(array.inject_sum).to eq 15
	end

	it 'can'
	
end