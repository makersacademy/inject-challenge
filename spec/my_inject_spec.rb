require 'my_inject'

describe Array do

	it "can add without an initial value" do
		expect([1,2,3].my_inject{|accumulator, element| accumulator + element}).to eq(6)
	end

	it "can add with an initial value" do
		expect([1,2,3].my_inject(0){|accumulator, element| accumulator + element}).to eq(6)
	end

	it "can add with a symbol and without an initial value" do
		expect([1,2,3].my_inject(:+)).to eq(6)
	end

	it "can add with a symbol and an initial value" do
		expect([1,2,3].my_inject(0, :+)).to eq(6)
	end

	it "can subtract without an initial value" do
		expect([1,2,3].my_inject{|accumulator, element| accumulator - element}).to eq(-4)
	end

	it "can subtract with an initial value" do
		expect([1,2,3].my_inject(0){|accumulator, element| accumulator - element}).to eq(-6)
	end

	it "can subtract with a symbol and without an initial value" do
		expect([1,2,3].my_inject(:-)).to eq(-4)
	end

	it "can subtract with a symbol and an initial value" do
		expect([1,2,3].my_inject(0, :-)).to eq(-6)
	end

	it "can times without an initial value" do
		expect([1,2,3].my_inject{|accumulator, element| accumulator * element}).to eq(6)
	end

	it "can times with an initial value" do
		expect([1,2,3].my_inject(20){|accumulator, element| accumulator * element}).to eq(120)
	end

	it "can times with a symbol and without an initial value" do
		expect([1,2,3].my_inject(:*)).to eq(6)
	end

	it "can times with a symbol and an initial value" do
		expect([1,2,3].my_inject(20, :*)).to eq(120)
	end

	it "can divide without an initial value" do
		expect([4,2].my_inject{|accumulator, element| accumulator / element}).to eq(2)
	end

	it "can divide with an initial value" do
		expect([4,2].my_inject(16){|accumulator, element| accumulator / element}).to eq(2)
	end

	it "can divide with a symbol and without an initial value" do
		expect([4,2].my_inject(:/)).to eq(2)
	end

	it "can divide with a symbol and an initial value" do
		expect([4,2].my_inject(16, :/)).to eq(2)
	end

	it "raises an error if the operation provided is not a symbol" do
		expect{[1,2,3].my_inject(0, '+')}.to raise_error(ArgumentError, "The operation provided must be a symbol")
	end
end

#Other pending tests

	# it "raises an error if both an operation and symbol are provided" do
	# 	expect([1,2,3].my_inject(0, :+){|accumulator, element| accumulator + element}).to raise_error(ArgumentError, "Please provide either an operation symbol or a block, not both")
	# end

		# it "can convert an array of arrays into a hash" do
	# 	hash = [[:X1, 'Y1'], [:X2, 'Y2']].inject({}) do |result, element| end
	# 	result[element.first] = element.last
	# 	result
	# end

# 	xit "can convert an array of arrays into a hash" do
# hash = [[:X1, 'Y1'], [:X2, 'Y2']].my_inject({}) do |result, element| end
# result[element.first] = element.last
# result
# end

# xit "can build an array" do
# array = [1,2,3,4].inject([]) do |result, element| end
# result << element.to_s if element % 2 == 0
# result
# end
