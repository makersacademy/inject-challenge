require 'diyinject'

describe Array do

  describe "Array#diy_inject" do

    context "addition" do

      it "can sum some numbers" do
        expect([1,2,3,4].diy_inject { |sum, n| sum + n }).to eq 10
      end

      it "can sum other numbers" do
        expect([5,6,7,8].diy_inject { |sum, n| sum + n }).to eq 26
      end

      it "can concatenate strings" do
        str_array = %w(hello my name is gabe)
        expect(str_array.diy_inject {|sum, n| sum + n }).to eq "hellomynameisgabe"
      end

    end

    context "multipication" do

      it "can multiply numbers" do
        expect([1,2,3,4].diy_inject { |product, n| product * n }).to eq 24 
      end 

    end
  
  end

end