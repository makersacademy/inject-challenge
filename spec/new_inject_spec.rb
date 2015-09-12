require 'new_inject'

describe Array do
  describe "#new_inject" do
    it {expect(subject).to respond_to(:new_inject).with(1).argument}

    it 'produce an array of squares of an array of numbers' do
      result = [1,2,3,5].new_inject([]) do |obj, ele|
        obj << ele * ele
      end
      expect(result).to eq([1,4,9,25])
    end
  end
end
