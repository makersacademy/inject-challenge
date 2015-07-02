require 'new_inject_method.rb'

describe Array do

  let (:test_array){[1,2,3,4]}

  context 'addition' do
    it 'can add numbers together' do
      expect(test_array.christian_inject {|k,v| k + v}).to eq 10
    end

    it 'can add strings together' do
      expect(['welcome','to','makers'].christian_inject {|k,v| k + v}).to eq "welcometomakers"
    end

    it 'can add numbers to an input' do
      expect(test_array.christian_inject(10){|k,v| k + v}).to eq 20
    end
  end

  context 'subtraction' do
    it 'can subtract numbers from the input' do
      expect(test_array.christian_inject(30){|k,v| k - v}).to eq 20
    end
  end

  context 'multiplication' do
    it 'can multiply the input' do
      expect(test_array.christian_inject(5){|k,v| k * v}).to eq 120
    end
  end

  context 'division' do
    it 'can divide the input' do
      expect(test_array.christian_inject(120){|k,v| k / v}).to eq 5
    end
  end
end