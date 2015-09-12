require 'inject'

describe Array do
  describe "#double_inject" do
    context "With a parameter" do
      it "adds up all the numbers" do
        expect([5,6,7,8,9,10].double_inject(0) { |sum, n| sum + n } ).to eq(45)
      end
    end

    context "Without a parameter" do

    end
  end
end
