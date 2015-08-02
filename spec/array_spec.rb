require "./lib/array.rb"

describe Array do
	it "add all the values in array [1, 2, 3, 4]" do
		expect([1, 2, 3, 4].rekt { |sum, number| sum + number }).to eq(10)
	end
	it "multiply all the values in  array [1, 2, 3, 4]" do
    expect([1, 2, 3, 4].rekt { |sum, number| sum * number }).to eq(24)
  end

  it "subtract all the values in array [1000, 200, 30, 4]" do
    expect([1000, 200, 30, 4].rekt { |sum, number| sum - number }).to eq(766)
  end

  it "divides all the values in array [10000, 15, 10, 5]" do
    expect([10000,15,10,5].rekt { |sum, number| sum / number }).to eq(13)
  end
end
