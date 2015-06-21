require 'array'

describe Array do

  context 'inject method should' do
    it 'work with addition when only passed a block' do
      expect([1,2,3,4,5].michael_inject{|x,y| x + y}).to eq 15
    end

    it 'work with only a symbol (division)' do
      expect([10,2,2].michael_inject(:/)).to eq 2
    end

    it 'work with only a symbol (subtraction)' do
      expect([3,4,5].michael_inject(:-)).to eq -6
    end

    it 'work with only a symbol (multiplication' do
      expect([6,7,8].michael_inject(:*)).to eq 336
    end

    it 'work with only a symbol (addition)' do
      expect([10,2,2].michael_inject(:+)).to eq 14
    end

    it 'work with an inital starting value and a block (division)' do
      expect([2,2,2].michael_inject(30){|x,y| x / y}).to eq 3
    end

    it 'work with an inital starting value and a block (subtraction)' do
      expect([20,3,2].michael_inject(30){|x,y| x - y}).to eq 5
    end

    it 'work with an inital starting value and a block (addition)' do
      expect([20,3,2].michael_inject(30){|x,y| x + y}).to eq 55
    end

    it 'work with an inital starting value and a block (multiplication)' do
      expect([20,3,2].michael_inject(3){|x,y| x * y}).to eq 360
    end

    it 'work with an inital starting value and a symbol (multi)' do
      expect([20,3,2].michael_inject(3,:*)).to eq 360
    end

    it 'work with an inital starting value and a symbol (div)' do
      expect([5,3,2].michael_inject(100,:/)).to eq 3
    end

    it 'work with an inital starting value and a symbol (sub)' do
      expect([25,3,2].michael_inject(100,:-)).to eq 70
    end

    it 'work with an inital starting value and a symbol (add)' do
      expect([25,3,2].michael_inject(100,:+)).to eq 130
    end


  end

end
