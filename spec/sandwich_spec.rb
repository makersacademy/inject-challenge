require 'sandwich_in'

describe Array do
  let(:array) { [1,2,3,4] }

  context 'the sandwich_in method' do

    it 'if given an empty array, returns the argument' do
      array = []
      expect(array.sandwich_in 5).to eq(5)
    end

    it 'if given 0 as an argument, sums all numbers in array and returns 10' do
      expect(array.sandwich_in(0) { |acc, n| acc + n}).to eq 10
    end

    it 'sums all numbers in an array without passing an argument' do
      expect(array.sandwich_in { |acc, n| acc + n}).to eq 10
    end

    it 'multiplies all numbers in an array and returns 24' do
      expect(array.sandwich_in { |acc, n| acc * n}).to eq 24
    end

    it 'divides all numbers in an array and returns 0' do
      expect(array.sandwich_in { |acc, n| acc / n}).to eq 0
    end

    it 'subtracts all numbers in an array and returns -8' do
      expect(array.sandwich_in { |acc, n| acc - n}).to eq(-8)
    end

    it 'finds the longest word in an array' do
      words = %w(crocodile bear giraffe lion )
      expect(words.sandwich_in do |acc, word|
        acc.length > word.length ? acc : word
      end).to eq('crocodile')
    end
  end
end
