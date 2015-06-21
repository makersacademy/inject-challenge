require 'injection'

describe Array do

	describe 'injection' do

	  it { is_expected.to respond_to :injection }

    context 'with a block' do

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

    context 'when given a symbol as an argument' do

      it 'will add numbers together' do
        expect([1,2,3,4].injection(:+)).to eq 10
      end

      it 'will multiply numbers together' do
        expect([1,2,3,4].injection(:*)).to eq 24
      end

      it 'will minus numbers together' do
        expect([1,2,3,4].injection(:-)).to eq -8
      end

      it 'will divide numbers together' do
        expect([1,2,3,4].injection(:/)).to eq 0
      end

      it 'will divide numbers together and return the remainder' do
        expect([1,2,3,4].injection(:%)).to eq 1
      end

      it 'will raise the first element in the shifted array to the power of the other elements' do
        expect([5,2].injection(:**)).to eq 25
      end
    end
  end
end