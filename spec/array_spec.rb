require 'array'

describe Array do

  let(:array) {[1,2,3,4]}
  let(:add) {proc { |acc, elem| acc + elem }}
  let(:sub) {proc { |acc, elem| acc - elem }}
  let(:mul) {proc { |acc, elem| acc * elem }}
  let(:div) {proc { |acc, elem| acc / elem }}
  let(:doub) {proc { |acc, elem| acc << 2*elem }}
  let(:squ) {proc { |acc, elem| acc << elem * elem }}
  let(:long) {proc { |acc, elem| acc.length > elem.length ? acc : elem }}

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
        expect(array.my_inject &mul).to eq(24)
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

      it "will act like inject when comparing length" do
        expect(["Morning", "Makers"].my_inject(&long)).to eq "Morning"
      end

    end

    context "uses procs with a parameter" do

      it "will act like inject with addition" do
        expect(array.my_inject(10, &add)).to eq(20)
      end

      it "will act like inject with subtraction" do
        expect(array.my_inject(10, &sub)).to eq(0)
      end

      it "will act like inject with multiplication" do
        expect(array.my_inject(5, &mul)).to eq(120)
      end

      it "will act like inject with division" do
        expect(array.my_inject(10, &div)).to eq(0)
      end

    end
  end

end

    # context 'using symbols for tesing integers' do
    #
      # it 'will act like inject with addition' do
      #  expect([1,2,3,4].my_inject(:+)).to eq(10)
      # end
    #
    #   it 'will act like inject with subtraction' do
    #    expect(array.my_inject(:-)).to eq(-8)
    #   end
    #
    #   it 'will act like inject with multiplication' do
    #    expect(array.my_inject(:*)).to eq(24)
    #   end
    #
    #   it 'will act like inject with division' do
    #    expect(array.my_inject(:/)).to eq(0)
    #   end
    #
    # end
