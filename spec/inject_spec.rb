require 'open_array'

describe Array do

  test_array = [2,3,4]
  add_result = test_array.inject { |sum, next_number | sum + next_number }
  subtract_result = test_array.inject { |sum, number| sum - number }

  describe '#my_inject' do

    it 'sums numbers' do
      expect([5,5,5].my_inject{ |sum, next_number | sum + next_number }).to eq(15)
    end

    it 'sums more numbers' do
      expect([2,3,4].my_inject{ |sum, next_number | sum + next_number }).to eq(add_result)
    end

    it 'subtracts numbers' do
      expect([5,2].my_inject{ |sum, number| sum - number } ).to eq(3)
    end

    it 'subtracts more numbers' do
      expect([2,3,4].my_inject{ |sum, number| sum - number }).to eq(subtract_result)
    end

  end
end
