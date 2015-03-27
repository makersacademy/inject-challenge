require 'my_inject'

describe Array do
  it 'it can add' do
    expect([1, 2, 3].inject { |memo, element| memo + element }).to eq 6
    expect([1, 2, 3].my_inject { |memo, element| memo + element }).to eq 6
  end

  it 'can times' do
    expect([1, 2, 3].inject { |memo, element| memo * element }).to eq 6
    # expect([1, 2, 3].my_inject { |memo, element| memo * element }).to eq 6
  end

  it 'can add with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo + element }).to eq 16
    # expect([1, 2, 3].my_inject(10) { |memo, element| memo + element }).to eq 16
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].inject(:+)).to eq 6
    # expect([1, 2, 3].my_inject(:+)).to eq 6
  end

  it 'can times with a symbol' do
    expect([1, 2, 3].inject(:*)).to eq 6
    # expect([1, 2, 3].my_inject(:*)).to eq 6
  end
end
