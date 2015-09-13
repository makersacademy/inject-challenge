require 'inject.rb'

describe Array do
  it 'can add the sum of array' do
    expect([1,2,3,4].my_inject(:+)).to eq(10)
  end
  it 'can add the sum of array from starting point' do
    expect([1,2,3,4].my_inject(:+, 10)).to eq(20)
  end
  it 'can subtract arrays' do
    expect([1,2,3,4].my_inject(:-)).to eq(-10)
  end
  it 'can subtract arrays from a starting point' do
    expect([1,2,3,4].my_inject(:-, 10)).to eq(0)
  end
  it 'can multiply arrays' do
    expect([1,2,3,4].my_inject(:*)).to eq(24)
  end
  it 'can multiply arrays from a starting point' do
    expect([1,2,3,4].my_inject(:*, 10)).to eq(240)
  end
  it 'can divide arrays' do
    expect([1,2,3,4].my_inject(:/)).to eq(0)
  end
  it 'can divide arrays from a starting point' do
    expect([1,2,3,4].my_inject(:/, 100)).to eq(4)
  end
end
