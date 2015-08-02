require 'array'

describe Array do
  it 'recieves the new inject method' do
    expect(subject).to respond_to(:fadi)
  end

  describe '#fadi' do
    it'sums the elements in the array' do
      array = [1,2,3,4]
      expect(array.fadi).to eq(10)
    end
  end
end
