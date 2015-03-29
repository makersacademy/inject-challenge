require 'my_inject'

describe Array do # rubocop: disable all
  it "can add" do
    expect([2, 3, 4].inject { |sum, element| sum + element }).to eq 9
    expect([2, 3, 4].my_inject { |sum, element| sum + element }).to eq 9
  end

  it "can multiply" do
    expect([2, 3, 4].inject { |sum, element| sum * element }).to eq 24
    expect([2, 3, 4].my_inject { |sum, element| sum * element }).to eq 24
  end

  it "can add with a starting point" do
    expect([2, 3, 4].inject(10) { |sum, element| sum + element }).to eq 19
    expect([2, 3, 4].my_inject(10) { |sum, element| sum + element }).to eq 19
  end

  it "can multiply with a starting point" do
    expect([2, 3, 4].inject(10) { |sum, element| sum * element }).to eq 240
    expect([2, 3, 4].my_inject(10) { |sum, element| sum * element }).to eq 240
  end

  it "can add with a symbol" do
    expect([2, 3, 4].inject(:+)).to eq 9
    expect([2, 3, 4].my_inject(:+)).to eq 9
  end

  it "can multiply with a symbol" do
    expect([2, 3, 4].inject(:*)).to eq 24
    expect([2, 3, 4].my_inject(:*)).to eq 24
  end

  it "can add with a starting point and a symbol" do
    expect([2, 3, 4].inject(10, :+)).to eq 19
    expect([2, 3, 4].my_inject(10, :+)).to eq 19
  end

  it "can multiply with a starting point and a symbol" do
    expect([2, 3, 4].inject(10, :*)).to eq 240
    expect([2, 3, 4].my_inject(10, :*)).to eq 240
  end
end
