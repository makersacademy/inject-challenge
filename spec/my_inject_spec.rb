require 'my_inject'

describe Array do
  it 'inject and my_inject can add items in an array' do
    expect([1, 2, 3].inject { |acc, element| acc + element }).to eq 6
    expect([1, 2, 3].my_inject { |acc, element| acc + element }).to eq 6
  end

  it 'inject and my_inject can multiply items in an array' do
    expect([1, 2, 3, 4].inject { |acc, element| acc * element }).to eq 24
    expect([1, 2, 3, 4].my_inject { |acc, element| acc * element }).to eq 24
  end

  it 'inject and my_inject can divide items in an array' do
    expect([1, 2, 3, 4].inject { |acc, element| acc / element }).to eq 0
    expect([1, 2, 3, 4].my_inject { |acc, element| acc / element }).to eq 0
  end

  it 'inject and my_inject can add items, given a starting point' do
    expect([1, 2, 3].inject(2) { |acc, element| acc + element }).to eq 8
    expect([1, 2, 3].my_inject(2) { |acc, element| acc + element }).to eq 8
  end

  it 'inject and my_inject can multiply items, given a starting point' do
    expect([1, 2, 3, 4].inject(2) { |acc, element| acc * element }).to eq 48
    expect([1, 2, 3, 4].my_inject(2) { |acc, element| acc * element }).to eq 48
  end

  it 'it inject and my_inject can divide items, given a starting point' do
    expect([1, 2, 3, 4].inject(100) { |acc, element| acc / element }).to eq 4
    expect([1, 2, 3, 4].my_inject(100) { |acc, element| acc / element }).to eq 4
  end

  it 'inject and my_inject can minus items in an array' do
    expect([1, 2, 3].inject { |acc, element| acc - element }).to eq(-4)
    expect([1, 2, 3].my_inject { |acc, element| acc - element }).to eq(-4)
  end

  it 'inject and my_inject can - items in an array, with a starting point' do
    expect([1, 2, 3].inject(-1) { |acc, element| acc - element }).to eq(-7)
    expect([1, 2, 3].my_inject(-1) { |acc, element| acc - element }).to eq(-7)
  end

  context 'using symbols' do
    it 'inject and my_inject can sum with symbols' do
      expect([1, 2, 3].inject(:+)).to eq(6)
      expect([1, 2, 3].my_inject(:+)).to eq(6)
    end

    it 'inject and my_inject can multiply with symbols' do
      expect([1, 2, 3].inject(:*)).to eq(6)
      expect([1, 2, 3].my_inject(:*)).to eq(6)
    end

    it 'inject and my_inject can minus with symbols' do
      expect([1, 2, 3].inject(:-)).to eq(-4)
      expect([1, 2, 3].my_inject(:-)).to eq(-4)
    end

    it 'inject and my_inject can divide with symbols' do
      expect([100, 2, 3].inject(:/)).to eq 16
      expect([100, 2, 3].my_inject(:/)).to eq 16
    end

    it 'inject and my_inject can sum with symbols, using a starting point' do
      expect([1, 2, 3].inject(2, :+)).to eq(8)
      expect([1, 2, 3].my_inject(2, :+)).to eq(8)
    end

    it 'inject and my_inject can times with symbols, using a starting point' do
      expect([1, 2, 3].inject(2, :*)).to eq(12)
      expect([1, 2, 3].my_inject(2, :*)).to eq(12)
    end

    it 'inject and my_inject can minus with symbols, using a starting point' do
      expect([1, 2, 3].inject(2, :-)).to eq(-4)
      expect([1, 2, 3].my_inject(2, :-)).to eq(-4)
    end
  end
end