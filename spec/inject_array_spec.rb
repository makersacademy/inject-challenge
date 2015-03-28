require 'inject'

describe Array do

  context 'with a block' do

    it 'can sum numbers' do
      expect([1, 2, 3].inject { |memo, element| memo + element }).to eq 6
      expect([1, 2, 3].my_inject { |memo, element| memo + element }).to eq 6
    end

    it 'can subtract numbers' do
      expect([1, 2, 3].inject { |memo, element| memo - element }).to eq(-4)
      expect([1, 2, 3].my_inject { |memo, element| memo - element }).to eq(-4)
    end

    it 'can multiply numbers' do
      expect([1, 2, 3].inject { |memo, element| memo * element }).to eq 6
      expect([1, 2, 3].my_inject { |memo, element| memo * element }).to eq 6
    end

  end

  context 'with a symbol' do

    it 'can sum numbers' do
      expect([1, 2, 3].inject(:+)).to eq 6
      expect([1, 2, 3].my_inject(:+)).to eq 6
    end

    it 'can subtract numbers' do
      expect([1, 2, 3].inject(:-)).to eq(-4)
      expect([1, 2, 3].my_inject(:-)).to eq(-4)
    end

    it 'can multiply numbers' do
      expect([1, 2, 3].inject(:*)).to eq 6
      expect([1, 2, 3].my_inject(:*)).to eq 6
    end

  end

  context 'with a block and an argument' do

    it 'can sum numbers' do
      expect([1, 2, 3].inject(10) { |memo, element| memo + element }).to eq 16
      expect([1, 2, 3].my_inject(10) { |memo, element| memo + element }).to eq 16
    end

    it 'can subtract numbers' do
      expect([1, 2, 3].inject(10) { |memo, element| memo - element }).to eq 4
      expect([1, 2, 3].my_inject(10) { |memo, element| memo - element }).to eq 4
    end

    it 'can multiply numbers' do
      expect([1, 2, 3].inject(10) { |memo, element| memo * element }).to eq 60
      expect([1, 2, 3].my_inject(10) { |memo, element| memo * element }).to eq 60
    end

  end

  context 'with a symbol and an argument' do

    it 'can sum numbers' do
      expect([1, 2, 3].inject(10, :+)).to eq 16
      expect([1, 2, 3].my_inject(10, :+)).to eq 16
    end

    it 'can subtract numbers' do
      expect([1, 2, 3].inject(10, :-)).to eq 4
      expect([1, 2, 3].my_inject(10, :-)).to eq 4
    end

    it 'can multiply numbers' do
      expect([1, 2, 3].inject(10, :*)).to eq 60
      expect([1, 2, 3].my_inject(10, :*)).to eq 60
    end

  end

end
