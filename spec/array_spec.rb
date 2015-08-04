require 'array'

describe Array do

  it 'should provide the sum of every item in the array' do
    expect([1, 2, 3, 4].my_inject(0) { |value, element| value + element }).to eq 10
  end

  it 'should sum every item in array including accumulator' do
    expect([1, 2, 3, 4].my_inject(5) { |value, element| value + element }).to eq 15
  end

  it 'should subtract every item in array from the accumulator' do
    expect([1, 2, 3, 4].my_inject(15) { |value, element| value - element }).to eq 5
  end

  it 'should multiply every item in an array' do
    expect([1, 2, 3, 4].my_inject(1) { |value, element| value * element }).to eq 24
  end

  it 'should divide every item in an array' do
    expect([1, 2, 3, 4].my_inject(120) { |value, element| value / element }).to eq 5
  end

end