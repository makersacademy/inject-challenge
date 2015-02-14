require 'diyinject'

describe Array do

  describe "Array#diy_inject" do

    it "can sum some numbers" do
      expect([1,2,3,4].diy_inject { |sum, n| sum + n }).to eq 10
    end

  end

end