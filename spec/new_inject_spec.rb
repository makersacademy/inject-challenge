require 'new_inject'

describe Array do
  context 'iterative_inject' do
    it 'reponds to the iterative_inject! method' do
      expect([]).to respond_to(:iterative_inject!)
    end

    it 'sums an array of integers 'do
      array=[1,2,3,4]
      expect(array.iterative_inject!(0) {|result, element| result + element}).to eq(10)
    end

    it 'matches the interal inject method for this block' do
      array=[9,2,5]
      comparison=array.inject{|result, element| element*result}
      expect(array.iterative_inject!{|result, element| element*result}). to eq(comparison)
    end
  end
  context 'recursive_inject!' do
    it 'reponds to the recursive_inject! method' do
      expect([]).to respond_to(:recursive_inject!)
    end
    it 'sums an array of integers 'do
      array=[1,2,3,4]
      expect(array.recursive_inject!(0) {|result, element| result + element}).to eq(10)
    end
    it 'matches the interal inject method for this block' do
      array=[9,2,5]
      comparison=array.inject{|result, element| element*result}
      expect(array.recursive_inject!{|result, element| element*result}). to eq(comparison)
    end
  end


end
