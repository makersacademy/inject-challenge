require_relative '../lib/my_inject'

describe Array do
  subject = [1, 2, 3, 4, 5]
  describe '#my_inject' do
    it 'should return the sum with a block that sums elements' do
      expect(subject.my_inject(0) { |s, element| s + element }).to eq 15
    end

    it 'should return the product with a block that multiplies elements' do
      expect(subject.my_inject(1) { |p, element| p * element }).to eq 120
    end

  end
end