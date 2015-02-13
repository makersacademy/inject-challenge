require 'inject'

# inject(initial, sym) → obj click to toggle source
# inject(sym) → obj
# inject(initial) { |memo, obj| block } → obj
# inject { |memo, obj| block } → obj
# Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.

# If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.

# If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.

describe Array do

  context 'You don\'t need the inject method!' do

  it 'should be able to accept a block' do
    expect([1].not_inject { "Please print this string" }).to eq "Please print this string"
  end





  # it 'should be able to add' do
  #   array = [1,2,3,4]
  #   expect(array.not_inject(0) { |result, element| result + element }).to eq 10
  #  end

  end
end