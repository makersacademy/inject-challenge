require 'array'

describe Array do
  context '#gusject method uses blocks' do
    it 'sums all the members of the array' do
      expect([2, 3, 4].gusject do |sum, el|
        sum + el
      end).to eq([2, 3, 4].inject { |sum, el| sum + el })
    end

    it 'subtracts all the members of the array from first' do
      expect([2, 3, 4].gusject do |sum, el|
        sum - el
      end).to eq([2, 3, 4].inject { |sum, el| sum - el })
    end

    it 'multiplies all the members of the array' do
      expect([2, 3, 4].gusject do |sum, el|
        sum * el
      end).to eq([2, 3, 4].inject { |sum, el| sum * el })
    end

    it 'divides first member by all others' do
      expect([100, 3, 4].gusject do |sum, el|
        sum / el
      end).to eq([100, 3, 4].inject { |sum, el| sum / el })
    end

    it 'concatenates strings' do
      expect(["what", "this is", "doing"].gusject do |sum, el|
        sum + " " + el
      end).to eq(["what", "this is", "doing"].inject do |sum, el|
        sum + " " + el
      end)
    end
  end

  context '#gusject method allows initial value to be set' do
    it 'sums' do
      expect([2, 3, 4].gusject(10) do |sum, el|
        sum + el
      end).to eq([2, 3, 4].inject(10) { |sum, el| sum + el })
    end

    it 'subtracts' do
      expect([2, 3, 4].gusject(10) do |sum, el|
        sum - el
      end).to eq([2, 3, 4].inject(10) { |sum, el| sum - el })
    end

    it 'multiplies' do
      expect([2, 3, 4].gusject(10) do |sum, el|
        sum * el
      end).to eq([2, 3, 4].inject(10) { |sum, el| sum * el })
    end

    it 'divides' do
      expect([2, 3, 4].gusject(10) do |sum, el|
        sum / el
      end).to eq([2, 3, 4].inject(10) { |sum, el| sum / el })
    end
  end

  context '#gusject method uses symbols' do
    it 'accepts symbols instead of a block' do
      expect([2, 3, 4].gusject(:+)).to eq([2, 3, 4].inject(:+))
      expect([2, 3, 4].gusject(:-)).to eq([2, 3, 4].inject(:-))
      expect([2, 3, 4].gusject(:*)).to eq([2, 3, 4].inject(:*))
      expect([2, 3, 4].gusject(:/)).to eq([2, 3, 4].inject(:/))
    end

    it 'can set initial values and uses symbols' do
      expect([2, 3, 4].gusject(10, :+)).to eq([2, 3, 4].inject(10, :+))
      expect([2, 3, 4].gusject(10, :-)).to eq([2, 3, 4].inject(10, :-))
      expect([2, 3, 4].gusject(10, :*)).to eq([2, 3, 4].inject(10, :*))
      expect([2, 3, 4].gusject(10, :/)).to eq([2, 3, 4].inject(10, :/))
    end
  end
end
