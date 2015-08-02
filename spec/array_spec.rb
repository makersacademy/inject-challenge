require "./lib/array.rb"


describe Array do
	it "should return 10 when getting the sum of array [1,2,3,4]" do 
		expect([1,2,3,4].rekt { |sum, number| sum + number}).to eq(10)
end
end