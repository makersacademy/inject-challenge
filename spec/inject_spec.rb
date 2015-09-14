require 'inject'

describe Array do
  describe "#double_inject" do
    context "With an initial value" do
      it "adds up all the numbers" do
        expect([5,6,7,8,9,10].double_inject(0) { |memo, n| memo + n } ).
          to eq(45)
      end

      it "multiplies all the numbers" do
        expect([1,2,3,4,5].double_inject(1) { |memo, n| memo * n }).
          to eq(120)
      end

      it "combines strings" do
        expect(('B'..'G').to_a.double_inject('A') { |memo, n| memo + n }).
          to eq('ABCDEFG')
      end
    end

    context "Without an initial value" do
      it "adds up all the numbers" do
        expect([5,6,7,8,9,10].double_inject { |memo, n| memo + n } ).
          to eq(45)
      end

      it "combines strings" do
        expect(('A'..'G').to_a.double_inject { |memo, n| memo + n }).
          to eq('ABCDEFG')
      end
    end
  end
end
