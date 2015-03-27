require 'my_inject'

describe Array do
  let(:array) { [1, 2, 3, 4] }
  let(:array2) { [20, 10] }
  let(:array3) { ['Hello ', 'world', '!'] }

  context 'passing a block' do
    it 'can add' do
      expect(array.inject { |sum, e| sum + e }).to eq 10
      expect(array.my_inject { |sum, e| sum + e }).to eq 10
    end

    it 'can subtract' do
      expect(array2.inject { |sum, e| sum - e }).to eq 10
      expect(array2.my_inject { |sum, e| sum - e }).to eq 10
    end

    it 'can times' do
      expect(array.inject { |sum, e| sum * e }).to eq 24
      expect(array.my_inject { |sum, e| sum * e }).to eq 24
    end

    it 'can divide' do
      expect(array2.inject { |sum, e| sum / e }).to eq 2
      expect(array2.my_inject { |sum, e| sum / e }).to eq 2
    end

    it 'can add strings' do
      expect(array3.inject { |sum, e| sum + e }).to eq 'Hello world!'
      expect(array3.my_inject { |sum, e| sum + e }).to eq 'Hello world!'
    end
  end

  context 'passing a block and a starting point' do
    it 'can add' do
      expect(array.inject(10) { |sum, e| sum + e }).to eq 20
      expect(array.my_inject(10) { |sum, e| sum + e }).to eq 20
    end

    it 'can subtract' do
      expect(array2.inject(50) { |sum, e| sum - e }).to eq 20
      expect(array2.my_inject(50) { |sum, e| sum - e }).to eq 20
    end

    it 'can times' do
      expect(array.inject(10) { |sum, e| sum * e }).to eq 240
      expect(array.my_inject(10) { |sum, e| sum * e }).to eq 240
    end

    it 'can divide' do
      expect(array2.inject(600) { |sum, e| sum / e }).to eq 3
      expect(array2.my_inject(600) { |sum, e| sum / e }).to eq 3
    end
  end

  context 'passing a symbol' do
    it 'can add' do
      expect(array.inject(:+)).to eq 10
      expect(array.my_inject(:+)).to eq 10
    end

    it 'can subtract' do
      expect(array2.inject(:-)).to eq 10
      expect(array2.my_inject(:-)).to eq 10
    end

    it 'can times' do
      expect(array.inject(:*)).to eq 24
      expect(array.my_inject(:*)).to eq 24
    end

    it 'can divide' do
      expect(array2.inject(:/)).to eq 2
      expect(array2.my_inject(:/)).to eq 2
    end

    it 'can add strings' do
      expect(array3.inject(:+)).to eq 'Hello world!'
      expect(array3.my_inject(:+)).to eq 'Hello world!'
    end
  end

  context 'passing a symbol and a starting point' do
    it 'can add' do
      expect(array.inject(10, :+)).to eq 20
      expect(array.my_inject(10, :+)).to eq 20
    end

    it 'can subtract' do
      expect(array2.inject(50, :-)).to eq 20
      expect(array2.my_inject(50, :-)).to eq 20
    end

    it 'can times' do
      expect(array.inject(10, :*)).to eq 240
      expect(array.my_inject(10, :*)).to eq 240
    end

    it 'can divide' do
      expect(array2.inject(600, :/)).to eq 3
      expect(array2.my_inject(600, :/)).to eq 3
    end
  end
end