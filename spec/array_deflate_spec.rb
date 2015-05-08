require 'rspec'
require 'deflate'

describe Array do

  describe '#deflate' do

    let(:array) { [1, 2, 3] }

    context 'when passed a block' do
      it 'sums contents' do
        expect(array.deflate { |sum, num| sum += num }).to eq 6
      end
      it 'reduces contents' do
        expect(array.deflate { |sum, num| sum -= num }).to eq(-4)
      end
      it 'multiplies contents' do
        expect(array.deflate { |sum, num| sum *= num }).to eq(6)
      end
      it 'the original array is unaltered' do
        original_array = array
        array.deflate { |sum, num| sum *= num }
        expect(array).to eq original_array
      end
    end

    context 'when passed a block and a initial value' do

      it 'adds its contents to initial value' do
        expect(array.deflate(10) { |sum, num| sum += num }).to eq 16
      end
      it 'subtracts its contents from initial value' do
        expect(array.deflate(10) { |sum, num| sum -= num }).to eq 4
      end
      it 'multiplies its contents from initial value' do
        expect(array.deflate(10) { |sum, num| sum *= num }).to eq(60)
      end
    end

    context 'when passed a method' do

      it 'uses it to reduce its contents' do
        expect(array.deflate :+).to eq(6)

        expect(array.deflate :*).to eq(6)

        expect(array.deflate :-).to eq(-4)
      end

      it 'the original array is unaltered' do
        original_array = array
        array.deflate(:*)
        expect(array).to eq original_array
      end

      it 'uses it to reduce its contents from an initial value' do
        expect(array.deflate(10, :+)).to eq(16)
      end
    end

    context 'when given a string' do

      it 'can be used find the longest word' do
        longest = %w( cat sheep bear ).deflate do |memo, word|
          memo.length > word.length ? memo : word
        end
        expect(longest).to eq 'sheep'
      end
      it 'can be used to concatenate' do
        concatenated = %w( words to be concatenated).deflate do |final, word|
          final += word
        end
        expect(concatenated).to eq 'wordstobeconcatenated'
      end
    end
  end
end
