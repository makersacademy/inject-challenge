require 'inject_method'

describe Array do

  arr1 = [1,2,3,4,5]

  it 'should return the sum of the numbers inside the given array' do
    expect(arr1.inject_method(0) { |sum, i| sum + i }).to eq(15)
  end

  it 'should return the product of the numbers inside the given array' do
      expect(arr1.inject_method(1) { |product, i| product * i }).to eq(120)
  end

end
