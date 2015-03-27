require 'array'

describe Array do
  context '#gusject method' do
    it 'sums all the members of the array' do
      expect([2, 3, 4].gusject { |sum, el| sum + el }).to eq 9
    end

    it 'multiplies all the members of the array' do
      expect([2, 3, 4].gusject { |sum, el| sum * el }).to eq 24
    end
  end
end
