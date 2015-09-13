require 'my-inject'

describe Array do 

  it 'should return the correct sum of numbers' do
    array = [1,2,3,4]
    expect(array.my_inject(0) { |sum, n| sum + n } ).to eq(10)
  end

  it 'should return the correct product of numbers' do
    array = [1,2,3,4]
    expect(array.my_inject(1) { |product, n| product * n } ).to eq(24)
  end

end