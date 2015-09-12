require 'new_inject'

describe Array do
  describe "#new_inject" do
    it {expect(subject).to respond_to(:new_inject).with(1).argument}

    it 'produce an array of squares of an array of numbers' do
      array = [1,2,3,5]
      result = array.new_inject([]) do |obj, ele|
        obj << ele * ele
      end
      norm_inj_res = array.inject([]) do |obj, ele|
        obj << ele * ele
      end
      expect(result).to eq(norm_inj_res)
    end
  end
end
