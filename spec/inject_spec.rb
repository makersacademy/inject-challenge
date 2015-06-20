require 'inject'

describe Array do
  describe 'new_inject_block' do
    it 'should use first element of array as default argument' do
      expect([3,4,5].new_inject_block {|a,b| a + b}).to eq 12
    end

    it 'should use first element of array as default argument' do
      expect([1,2,3].new_inject_block {|a,b| a + b}).to eq 6
    end

    it 'should accept an argument as a starting value' do
      expect([3,4,5].new_inject_block(5) {|a,b| a + b}).to eq 17
    end

    it 'should work with string elements' do
      word_array = %w{ cat sheep bear }
      expect(word_array.new_inject_block { |memo, word| memo.length > word.length ? memo : word }).to eq "sheep"
    end

    it 'should accept a symbol(+)' do
      expect([5,6,7,8,9,10].new_inject_sym(:+)).to eq 45
    end

    it 'should accept a symbol(*)' do
      expect([3,4,5].new_inject_sym(:*)).to eq 60
    end

    it 'should accept a symbol(+) with an argument' do
      expect([5,6,7,8,9,10].new_inject_sym(5,:+)).to eq 50
    end

    it 'should accept a symbol(*) with an argument' do
      expect([3,4,5].new_inject_sym(2,:*)).to eq 120
    end

  end
end
