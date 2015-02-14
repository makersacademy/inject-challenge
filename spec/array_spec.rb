require 'array'

describe Array do

    array = [1,2,3,4]

  it "should transform each element of a given array" do
    expect(array.add_each_three).to eq([4,5,6,7])
  end

  it "can sum up all values of an array" do
    array = [-1,2,3,4]
    expect(array.sum_up).to eq(8) 
  
  end

  
end


#Inject works by initializing an accumulator object and then
#iterating through a collection,
#performing a calculation on each iteration and resetting
#the accumulator, for purposes of the next iteration,
#to the result of that calculation.