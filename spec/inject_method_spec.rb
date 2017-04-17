require './lib/inject_method' 

describe My_Array do

	it 'is expected to give the same result for #challenge method and inject method' do
		subject = My_Array.new
		expect(subject.challenge(0) {|x, y| x + y}).to eq subject.inject(0) {|x, y| x + y}
	end 
end 
	


