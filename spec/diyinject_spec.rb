require 'diyinject'

describe Array do

  describe "Array#diy_inject" do

    context 'without an argument' do

      describe "addition" do

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

        it "can subtract numbers from each other, starting with the first element in an array" do
          expect([1,2,3,4].diy_inject { |total, n| total - n }).to eq -8
        end

      end

      describe "multipication" do

        it "can multiply numbers" do
          expect([1,2,3,4].diy_inject { |product, n| product * n }).to eq 24
        end

        it "can multiply an array of numbers not starting with 1" do
          expect([5,8,10,12].diy_inject { |product, n| product * n }).to eq 4800 
        end

        it "returns 0 if the array includes 0" do
          expect([591,0,32,1].diy_inject { |product, n| product * n }).to eq 0
        end

        it "can handle negative numbers correctly" do
          expect([-1,-2,-3,4].diy_inject { |product, n| product * n }).to eq -24
        end

        it 'can handle exponents correcly' do
          expect([2,3,4].diy_inject   { |product, n| product ** n }).to eq 4096
        end

      end

    end
  
  end

end