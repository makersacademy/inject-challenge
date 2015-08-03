require 'inject_method'

describe Array do
  let(:array) { [1,2,3] }

  add = Proc.new { |plus, i|plus + i }
  subtract = Proc.new { |plus, i|plus - i }
  multiply = Proc.new { |plus, i|plus * i }
  divide = Proc.new { |plus, i|plus / i }

  it"Has a method owen_inject" do
    expect(subject).to respond_to :owen_inject
  end

  it "combines the elements in an array by adding them together" do
    tester = array.owen_inject(&add)
    expect(tester).to eq 6
  end

  it "combines the elements in an array by subtracting them " do
    tester = array.owen_inject(&subtract)
    expect(tester).to eq -4
  end


  it "combines the elements in an array by multiplying them " do
    tester = array.owen_inject(&multiply)
    expect(tester).to eq 6
  end

  it "combines the elements in an array by multiplying them " do
    tester = array.owen_inject(&divide)
    expect(tester).to eq 0
  end

end
