require 'inject'

describe Array do

    it "can add numbers" do
      expect([1,2,3].inject{|n, element| n + element}).to eq 6
      expect([1,2,3].inject_alt{|n, element| n + element}).to eq 6
    end

    it "can subtract numbers" do
      expect([1,2,3].inject{|n, element| n - element}).to eq -4
      expect([1,2,3].inject_alt{|n, element| n - element}).to eq -4
    end

    it "can multiply numbers" do
      expect([1,2,3].inject{|n, element| n * element}).to eq 6
      expect([1,2,3].inject_alt{|n, element| n * element}).to eq 6
    end

    it 'can add with a starting point' do
      expect([1,2,3].inject(5){|n, element| n + element}).to eq 11
      expect([1,2,3].inject_alt(5){|n, element| n + element}).to eq 11
    end
    
    it 'can subtract with a starting point' do
      expect([1,2,3].inject(5){|n, element| n - element}).to eq -1
      expect([1,2,3].inject_alt(5){|n, element| n - element}).to eq -1
    end

    it 'can multiply with a starting point' do
      expect([1,2,3].inject(5){|n, element| n * element}).to eq 30
      expect([1,2,3].inject_alt(5){|n, element| n * element}).to eq 30
    end
end

#extra tests for symbols?



