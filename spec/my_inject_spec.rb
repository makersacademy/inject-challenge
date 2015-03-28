require 'my_inject'

describe Array do
  it 'it can add' do
    expect([1, 2, 3].inject { |memo, element| memo + element }).to eq 6
    expect([7, 2, 6].my_inject { |memo, element| memo + element }).to eq 15
  end

  it 'can times' do
    expect([1, 2, 3].inject { |memo, element| memo * element }).to eq 6
    expect([7, 8, 9].my_inject { |memo, element| memo * element }).to eq 504
  end

  it 'can add with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo + element }).to eq 16
    expect([2, 9, 3].my_inject(10) { |memo, element| memo + element }).to eq 24
  end

  it 'can times with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo * element }).to eq 60
    expect([3, 7, 4].my_inject(11) { |memo, element| memo * element }).to eq 924
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].inject(:+)).to eq 6
    expect([4, 7, 3, 5, 3].my_inject(:+)).to eq 22
  end

  it 'can times with a symbol' do
    expect([1, 2, 3].inject(:*)).to eq 6
    # expect([1, 2, 3].my_inject(:*)).to eq 6
  end
end
