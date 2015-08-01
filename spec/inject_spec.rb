require 'open_array'

describe Array do

  describe '#my_inject' do
    it 'sums simple number array' do
      expect([1,2,3].my_inject{ |sum, next_number | sum + next_number }).to eq(6)
    end
  end
end
