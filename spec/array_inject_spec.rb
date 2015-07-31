require 'array_inject'

describe SubclassArray do 
	it 'has a working inject method' do 
		expect(subject.injecting([5,6,7,8,9,10],0)).to eq 45
	end 
end 