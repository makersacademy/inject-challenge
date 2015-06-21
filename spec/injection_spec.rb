require 'injection'

describe Array do

	describe 'injection' do

	  it { is_expected.to respond_to :injection }

    it 'can add numbers together' do
      expect([1,2,3,4].injection{|accumulator, element| accumulator + element}).to eq 10
    end

    it 'can multiply numbers together' do
      expect([1,2,3,4].injection{|accumulator, element| accumulator * element}).to eq 24
    end

    it 'can minus numbers together' do
      expect([1,2,3,4].injection{|accumulator, element| accumulator - element}).to eq -8
    end

    it 'can divide numbers together' do
      expect([1,2,3,4].injection{|accumulator, element| accumulator / element}).to eq 0
    end

    it 'can divide numbers and return the remainder' do
      expect([1,2,3,4].injection{|accumulator, element| accumulator % element}).to eq 1
    end

    it 'can raise the first element in the shifted array to the power of the other elements' do
      expect([5,2].injection{|accumulator, element| accumulator ** element}).to eq 25
    end
  end
end