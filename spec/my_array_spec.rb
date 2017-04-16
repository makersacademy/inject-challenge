require 'array'

describe Array do
  it 'can add' do
    expect([1, 2, 3].inject { |memo, element| memo + element }).to eq 6
    expect([1, 2, 3].my_inject { |memo, element| memo + element }).to eq 6
  end

  it 'can times' do
    expect([1, 2, 3].inject { |memo, element| memo * element }).to eq 6
    expect([1, 2, 3].my_inject { |memo, element| memo * element }).to eq 6

  end

  it 'can add with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo + element }).to eq 16
    expect([1, 2, 3].my_inject(10) { |memo, element| memo + element }).to eq 16
  end

  it 'can times with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo * element }).to eq 60
    expect([1, 2, 3].my_inject(10) { |memo, element| memo * element }).to eq 60
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].inject(:+)).to eq 6
    expect([1, 2, 3].my_inject(:+)).to eq 6
  end

  it 'can times with a symbol' do
    expect([1, 2, 3].inject(:*)).to eq 6
    expect([1, 2, 3].my_inject(:*)).to eq 6
  end

  it 'can add with a string' do
    expect([1, 2, 3].inject('+')).to eq 6
    expect([1, 2, 3].my_inject('+')).to eq 6
  end

  it 'can times with a string' do
    expect([1, 2, 3].inject('*')).to eq 6
    expect([1, 2, 3].my_inject('*')).to eq 6
  end

  it 'can times with a starting point and string' do
    expect([1, 2, 3].inject(10, '*')).to eq 60
    expect([1, 2, 3].my_inject(10, '*')).to eq 60
  end

  it 'can times with a starting point and a symbol' do
    expect([1, 2, 3].inject(10, :*)).to eq 60
    expect([1, 2, 3].my_inject(10, :*)).to eq 60
  end

  it 'uses symbol if passed both symbol and block' do
    expect([1, 2, 3].inject(10, :*) { |memo, elem| memo + elem }).to eq 60
    expect([1, 2, 3].my_inject(10, :*) { |memo, elem| memo + elem }).to eq 60
  end
end
