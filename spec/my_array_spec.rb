require 'array'

describe 'Array' do
  context 'without arguments' do
    it 'can add' do
      expect([1, 2, 3].inject { |sum, n| sum + n }).to eq 6
      expect([1, 2, 3].my_inject { |sum, n| sum + n }).to eq 6
    end

    it 'can multiply' do
      expect([1, 2, 3].inject { |sum, n| sum * n }).to eq 6
      expect([1, 2, 3].my_inject { |sum, n| sum * n }).to eq 6
    end

    it 'can subtract' do
      expect([10, 5, 2].inject { |sum, n| sum - n }).to eq 3
      expect([10, 5, 2].my_inject { |sum, n| sum - n }).to eq 3
    end

    it 'can divide' do
      expect([1, 2, 3].inject { |sum, n| sum / n }).to eq 0
      expect([1, 2, 3].my_inject { |sum, n| sum / n }).to eq 0
    end
  end

  context 'with starting point' do
    it 'can add with starting point' do
      expect([1, 2, 3].inject(10) { |sum, n| sum + n }).to eq 16
      expect([1, 2, 3].my_inject(10) { |sum, n| sum + n }).to eq 16
    end

    it 'can multiply with a starting point' do
      expect([1, 2, 3].inject(10) { |sum, n| sum * n }).to eq 60
      expect([1, 2, 3].my_inject(10) { |sum, n| sum * n }).to eq 60
    end

    it 'can subtract with a starting point' do
      expect([1, 2, 3].inject(10) { |sum, n| sum - n }).to eq 4
      expect([1, 2, 3].my_inject(10) { |sum, n| sum - n }).to eq 4
    end

    it 'can divide with a starting point' do
      expect([2, 2, 2].inject(80) { |sum, n| sum / n }).to eq 10
      expect([2, 2, 2].my_inject(80) { |sum, n| sum / n }).to eq 10
    end
  end

  context 'with a symbol' do
    it 'can add with a symbol' do
      expect([1, 2, 3].inject(:+)).to eq 6
      expect([1, 2, 3].my_inject(:+)).to eq 6
    end

    it 'can multiply with a symbol' do
      expect([2, 5, 10].inject(:*)).to eq 100
      expect([2, 5, 10].my_inject(:*)).to eq 100
    end

    it 'can subtract with a symbol' do
      expect([50, 20, 3].inject(:-)).to eq 27
      expect([50, 20, 3].my_inject(:-)).to eq 27
    end

    it 'can divide with a symbol' do
      expect([80, 2, 2].inject(:/)).to eq 20
      expect([80, 2, 2].my_inject(:/)).to eq 20
    end
  end

  context 'with a starting point and a symbol' do
    it 'can add with a starting point and symbol' do
      expect([1, 2, 3].inject(10, :+)).to eq 16
      expect([1, 2, 3].my_inject(10, :+)).to eq 16
    end

    it 'can multiply with a starting point and a symbol' do
      expect([2, 5, 10].inject(10, :*)).to eq 1000
      expect([2, 5, 10].my_inject(10, :*)).to eq 1000
    end

    it 'can subtract with a starting point and a symbol' do
      expect([5, 20, 3].inject(50, :-)).to eq 22
      expect([5, 20, 3].my_inject(50, :-)).to eq 22
    end

    it 'can divide with a starting point and a symbol' do
      expect([2, 2, 2].inject(80, :/)).to eq 10
      expect([2, 2, 2].my_inject(80, :/)).to eq 10
    end
  end
end
