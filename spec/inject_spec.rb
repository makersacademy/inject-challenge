require_relative '../inject'

describe Array do 

  let (:array) {Array.new}

   
  it "should be able to do addition" do 
    array = [2,3,4]
    expect(array.injection_method(1) {|sum, num| sum + num}).to eq(10)
  end

  it "should be able to do multiplication" do
    array = [3,4,5]
    expect(array.injection_method(2) {|product, num| product * num}).to eq(120)
  end

  it "should be able to take longer blocks" do
    array = ["cat", "dog", "mouse", "flea"]
    expect(array.injection_method {|animal, word| animal.length > word.length ? animal : word }).to eq("mouse")
  end
  
  it "should be able to do multiplication without the argument" do
    array = [2,3,4]
    expect(array.injection_method {|sum, num| sum * num}).to eq(24)
  end

  it "should be able to do multiplication with a 0 argument" do
    array = [2,3,4]
    expect(array.injection_method(0) {|sum, num| sum * num}).to eq(0)
  end

  it "should not modify the original array" do
    array = [2,3,4]
    array.injection_method {|sum, num| sum * num}
    expect(array).to eq([2,3,4]) # :)
  end

end

#read and understood a solution found online