require 'array'

describe Array do
  context '#gusject method' do
    it 'sums all the members of the array' do
      expect([2, 3, 4].gusject do |sum, el|
        sum + el
      end).to eq([2, 3, 4].inject { |sum, el| sum + el })
    end

    it 'multiplies all the members of the array' do
      expect([2, 3, 4].gusject do |sum, el|
        sum * el
      end).to eq([2, 3, 4].inject { |sum, el| sum * el })
    end

    it 'allows for the initial value to be set' do
      expect([2, 3, 4].gusject(10) do |sum, el|
        sum + el
      end).to eq([2, 3, 4].inject(10) { |sum, el| sum + el })
    end

    it 'accepts symbols instead of a block' do
      expect([2, 3, 4].gusject(:+)).to eq([2, 3, 4].inject(:+))
      expect([2, 3, 4].gusject(:*)).to eq([2, 3, 4].inject(:*))
    end

    it 'can set initial value with symbols' do
      expect([2, 3, 4].gusject(10, :+)).to eq([2, 3, 4].inject(10, :+))
    end
  end
end
