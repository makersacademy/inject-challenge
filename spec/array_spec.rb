require 'array'

describe Array do
  it 'can add with no starting value or symbol' do
    expect([1, 2, 3].inject { |sum, el| sum + el }).to be == 6
    expect([1, 2, 3].my_inject { |sum, el| sum + el }).to be == 6
  end

  it 'can multiply with no starting value or symbol' do
    expect([1, 2, 3].inject { |sum, el| sum * el }).to be == 6
    expect([1, 2, 3].my_inject { |sum, el| sum * el }).to be == 6
  end

  it 'can add with a starting value but no symbol' do
    expect([1, 2, 3].inject(15) { |sum, el| sum + el }).to be == 21
    expect([1, 2, 3].my_inject(15) { |sum, el| sum + el }).to be == 21
  end

  it 'can multiply with a starting value but no symbol' do
    expect([1, 2, 3].inject(15) { |sum, el| sum * el }).to be == 90
    expect([1, 2, 3].my_inject(15) { |sum, el| sum * el }).to be == 90
  end

  it 'can add with symbol but no starting value' do
    expect([1, 2, 3].inject(:+)).to be == 6
    expect([1, 2, 3].my_inject(:+)).to be == 6
  end

  it 'can multiply with symbol but no starting value' do
    expect([1, 2, 3].inject(:*)).to be == 6
    expect([1, 2, 3].my_inject(:*)).to be == 6
  end

  it 'can add with a starting point and symbol' do
    expect([1, 2, 3].inject(15, :+)).to be == 21
    expect([1, 2, 3].my_inject(15, :+)).to be == 21
  end

  it 'can multiply with a starting point and symbol' do
    expect([1, 2, 3].inject(15, :*)).to be == 90
    expect([1, 2, 3].my_inject(15, :*)).to be == 90
  end

  it 'can divide with a starting point and symbol' do
    expect([1, 2, 3].inject(15.0, :/)).to be == 2.5
    expect([1, 2, 3].my_inject(15.0, :/)).to be == 2.5
  end
end