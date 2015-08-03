require 'array'

describe Array do

  it 'should provide the sum of every item in the array' do
    expect([1, 2, 3, 4].my_inject(0) { |result, element | result + element }).to eq 10
  end

  it 'should sum every item in array including acculmulator' do
    expect([1, 2, 3, 4].my_inject(5) { |result, element | result + element }).to eq 15
  end

  it 'should multiply every item in an array' do
    expect ([1, 2, 3, 4].my_inject(1) { |result, element | result * element }).to eq 24
  end
end