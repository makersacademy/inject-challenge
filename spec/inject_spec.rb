
require './lib/inject'

describe Array do
  
  context 'with a block' do

    it 'returns the sum of some numbers starting with the first number in the array' do

      expect((5..10).inject {|sum, n| sum + n } ).to eq(45) 
      #expect((5..10).new_inject {|sum, n| sum + n } ).to eq(45) 

    end

    it 'returns the sum of some numbers starting with the first number given' do

      expect((5..10).inject(1) {|sum, n| sum + n } ).to eq(46) 
      #expect((5..10).new_inject {|sum, n| sum + n } ).to eq(45) 

    end    

    it 'returns the product of some numbers' do

      expect((5..10).inject {|product, n| product * n } ).to eq(151200) 
      #expect((5..10).new_inject {|product, n| product * n } ).to eq(151200) 

    end
  end

  context 'with a method' do

    it 'can sum numbers using a symbol' do
      expect([1,2,3,4].inject(:+)).to eq(10) 
      expect([1,2,3,4].symbol_inject(:+)).to eq(10)
    end

    it 'can sum numbers using a symbol and argument' do
      expect([1,2,3,4].inject(3, :+)).to eq(13) 
      expect([1,2,3,4].symbol_inject(3, :+)).to eq(13)
    end

    it 'can multiply numbers using a symbol' do
      expect([1,2,3,4].inject(:*)).to eq(24) 
      expect([1,2,3,4].symbol_inject(:*)).to eq(24) 
    end

    it 'can multiply numbers using a symbol and an argument' do
      expect([1,2,3,4].inject(1, :*)).to eq(24) 
      expect([1,2,3,4].symbol_inject(1, :*)).to eq(24) 


    end
  end


end