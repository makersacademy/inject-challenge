require 'new_inject'

describe Array do
  arr1 = [1, 2, 3, 4, 5]
  arr2 = ["cat", "sheep", "bear"]

  it "can respond to new_inject" do
    expect(subject).to respond_to(:new_inject).with(1).argument
  end

  describe "#new_inject" do
    it "accepts an addition block" do
      expect(arr1.new_inject { |a, b| a + b }).to eq(15)
    end

    it "accepts a multiplication block" do
      expect(arr1.new_inject { |a, b| a * b }).to eq(120)
    end

    it "can accept additional arguments" do
      expect(arr1.new_inject(6) { |a, b| a + b }).to eq(21)
    end

    it "can find the shortest word" do
      expect(arr2.new_inject { |m, w| m.length < w.length ? m : w }).to eq("cat")
    end

    it "can accept symbols" do
      expect(arr1.new_inject(:+)).to eq(15)
    end

    it "can accept symbols with other arguments" do
      expect(arr1.new_inject(6, :+)).to eq(21)
    end
  end
end