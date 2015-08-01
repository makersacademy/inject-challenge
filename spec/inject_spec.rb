require 'open_array'

describe Array do

  test_array = [1,2,3,4,rand(50),rand(10),rand(1),12364]

  describe '#my_inject' do

    it 'sums numbers' do
      expect([1,2,3].my_inject{ |sum, next_number | sum + next_number }).to eq(6)
    end

    it 'sums more numbers' do
      expect(test_array.my_inject{ |sum, next_number | sum + next_number }).to eq(test_array.inject { |sum, next_number | sum + next_number })
    end

    it 'subtracts numbers' do
      expect([5,2].my_inject{ |sum, number| sum - number } ).to eq(3)
    end

    it 'subtracts more numbers' do
      expect(test_array.my_inject{ |sum, number| sum - number }).to eq(test_array.inject { |sum, number| sum - number })
    end

  end
end
