require 'array'

describe Array do
  let(:array) { [1,2,3,4]}

  describe "#my_inject with integers" do

    add = Proc.new { |acc, elem| acc + elem }
    sub = Proc.new { |acc, elem| acc - elem }
    mul = Proc.new { |acc, elem| acc * elem }
    div = Proc.new { |acc, elem| acc / elem }
    doub = Proc.new { |acc, elem| acc << 2*elem }

    it { is_expected.to respond_to(:my_inject)}

    it "will act like inject with addition" do
      expect(array.my_inject &add).to eq(10)
    end

    it "will act like inject with subraction" do
      expect(array.my_inject &sub).to eq(-8)
    end

    it "will act like inject with multiplication" do
      expect(array.my_inject &mul).to eq(24)
    end

    it "will act like inject with divsion" do
      expect(array.my_inject &div).to eq(0)
    end

    it "will act like inject with doubling" do
      expect(array.my_inject &doub).to eq(262144)
    end

  end

end
