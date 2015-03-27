require 'array'

describe Array do
  context '#gusject method' do
    it 'sums all the members of the array' do
      expect([2, 3, 4].gusject { |sum, el| sum + el }).to eq 9
    end

    it 'multiplies all the members of the array' do
      expect([2, 3, 4].gusject { |sum, el| sum * el }).to eq 24
    end

    it 'allows for the initial value to be set' do
      expect([2, 3, 4].gusject(10) { |sum, el| sum + el }).to eq 19
    end

    it 'accepts symbols instead of a block' do
      expect([2, 3, 4].gusject(:+)).to eq 9
      expect([2, 3, 4].gusject(:*)).to eq 24
    end
  end
end
