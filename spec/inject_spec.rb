require 'inject'

describe Array do

  let(:array) {[1,2,3,4,5,6,7,8,9,10]}

  add = Proc.new { |acc, elem| acc + elem }
  sub = Proc.new { |acc, elem| acc - elem }
  mul = Proc.new { |acc, elem| acc * elem }
  div = Proc.new { |acc, elem| acc / elem }
  doub = Proc.new { |acc, elem| acc << 2*elem }
  squ = Proc.new { |acc, elem| acc << elem * elem}

  describe "#my_inject" do
    context "uses procs without a parameter" do

      it "will act like inject with addition" do
        result = array.my_inject { |acc, elem| acc + elem }
        expect(array.my_inject &add).to eq(result)
      end

      it "will act like inject with subraction" do
        result = array.my_inject { |acc, elem| acc - elem }
        expect(array.my_inject &sub).to eq(result)
      end

      it "will act like inject with multiplication" do
        result = array.my_inject { |acc, elem| acc * elem }
        expect(array.my_inject &mul).to eq(3628800)
      end

      it "will act like inject with divsion" do
        result = array.my_inject { |acc, elem| acc / elem }
        expect(array.my_inject &div).to eq(result)
      end

      it "will act like inject with doubling" do
        result = array.my_inject { |acc, elem| acc << 2*elem }
        expect(array.my_inject &doub).to eq(result)
      end

      it "will act like inject with sqauring" do
        result = array.my_inject { |acc, elem| acc << elem * elem }
        expect(array.my_inject &squ).to eq(result)
      end

    end

    context "uses procs with a parameter" do

      it "will act like inject with addition" do
        expect(array.my_inject(10, &add)).to eq(65)
      end

      it "will act like inject with subtraction" do
        expect(array.my_inject(10, &sub)).to eq(-45)
      end

      it "will act like inject with multiplication" do
        expect(array.my_inject(5, &mul)).to eq(18144000)
      end

      it "will act like inject with division" do
        expect(array.my_inject(10, &div)).to eq(0)
      end

    end
  end

end
