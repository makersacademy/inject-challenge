require 'new_inject'

describe Array do

  array = [1,2,3,4,5]

  describe '#new_inject' do
    it { is_expected.to respond_to :new_inject }

    it 'returns the sum of the array' do
      result = array.new_inject(0){|sum, x| sum += x}
      expect(result).to be 15 
    end
  end

end
