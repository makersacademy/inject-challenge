require 'inject'

describe Array do
  describe "#double_inject" do
    context "With a parameter" do
      it "adds up all the numbers" do
        expect([5,6,7,8,9,10].double_inject(0) { |memo, n| memo + n } ).to eq(45)
      end

      it "multiplies all the numbers" do
        expect([1,2,3,4,5].double_inject(1) { |memo, n| memo * n }).to eq(120)
      end

      it "combines strings" do
        expect(('B'..'G').to_a.double_inject('A') { |sum, n| sum + n }).to eq('ABCDEFG')
      end
    end

    context "Without a parameter" do
      xit "adds up all the numbers" do
        expect([5,6,7,8,9,10].double_inject { |sum, n| sum + n } ).to eq(45)
      end
    end
  end
end
