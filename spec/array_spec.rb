require 'array'

describe Array do

  let(:array) {[1,2,3,4]}

  add = Proc.new { |acc, elem| acc + elem }
  sub = Proc.new { |acc, elem| acc - elem }
  mul = Proc.new { |acc, elem| acc * elem }
  div = Proc.new { |acc, elem| acc / elem }
  doub = Proc.new { |acc, elem| acc << 2*elem }
  squ = Proc.new { |acc, elem| acc << elem * elem}

  describe "#my_inject using procs for testing integers" do

      it { is_expected.to respond_to(:my_inject).with(1).argument}

      it "will act like inject with addition" do
        result = array.my_inject { |acc, elem| acc + elem }
        expect(array.my_inject &add).to eq(result)
      end

      it "will act like inject with subraction" do
        result = array.my_inject { |acc, elem| acc - elem }
        expect(array.my_inject &sub).to eq(-8)
      end

      it "will act like inject with multiplication" do
        result = array.my_inject { |acc, elem| acc * elem }
        expect(array.my_inject &mul).to eq(result)
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

end
