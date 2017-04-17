require 'array'

describe Array do

  describe '#my_inject_method' do
    subject = [1, 2, 3, 4]

    it 'returns the correct sum of numbers inside the array' do
      expect(subject.my_inject_method(0) { |sum, element| sum + element }).to eq(10)
    end

    it 'returns the correct product of numbers inside the array' do
      expect(subject.my_inject_method(1) { |product, element| product * element }).to eq(24)
    end
  end
end
