
require './lib/inject'

describe Array do
  
  context 'with a block' do

    it 'returns the sum of some numbers starting with the first number in the array' do

      expect(test.inject {|sum, n| sum + n } ).to eq(10) 
      expect(test.new_inject {|sum, n| sum + n } ).to eq(10) 

    end

    it 'returns the sum of some numbers with the first number given' do

      expect(test.inject(1) {|sum, n| sum + n } ).to eq(11) 
      expect(test.new_inject(1) {|sum, n| sum + n } ).to eq(11) 

    end    

    it 'returns the product of some numbers' do

      expect(test.inject {|product, n| product * n } ).to eq(24) 
      expect(test.new_inject {|product, n| product * n } ).to eq(24) 

    end

    it 'returns the product of some numbers with the first number given' do

      expect(test.inject(2) {|product, n| product * n } ).to eq(48) 
      expect(test.new_inject(2) {|product, n| product * n } ).to eq(48) 

    end
  end

  context 'with a method' do

    it 'can sum numbers using a symbol' do
      expect(test.inject(:+)).to eq(10) 
      expect(test.new_inject(:+)).to eq(10)
    end

    it 'can sum numbers using a symbol and argument' do
      expect(test.inject(3, :+)).to eq(13) 
      expect(test.new_inject(3, :+)).to eq(13)
    end

    it 'can multiply numbers using a symbol' do
      expect(test.inject(:*)).to eq(24) 
      expect(test.new_inject(:*)).to eq(24) 
    end

    it 'can multiply numbers using a symbol and an argument' do
      expect(test.inject(1, :*)).to eq(24) 
      expect(test.new_inject(1, :*)).to eq(24) 


    end
  end

  def test
    @test = [1,2,3,4]
  end

end