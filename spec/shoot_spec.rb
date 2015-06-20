require 'shoot'

describe ModifiedArray do

  it "returns 1 when called on array containing integer 1 with no arguments" do
    array = ModifiedArray.new
    array << 1
    expect( array.shoot { |accumulator, element| element }).to eq 1
  end

  it "returns 2 when called on array containing integer 1 with argument of int 1" do
    array = ModifiedArray.new
    array << 1
    expect( array.shoot(1) { |accumulator, element| accumulator + element }).to eq 2
  end

  it 'adds up an array of 1 - 5' do
    array = ModifiedArray.new
    array << 1 << 2 << 3 << 4 << 5
    expect(array.shoot(0) { |acc, el| acc + el }).to eq 15
  end

  it 'adds up an array of 1 - 5' do
    array = ModifiedArray.new
    array << 1 << 2 << 3 << 4 << 5
    expect(array.shoot(5) { |acc, el| acc + el }).to eq 20
  end

  it "returns 15 when called without a block but argument" do
    array = ModifiedArray.new
    array << 1 << 2 << 3 << 4 << 5
    expect(array.shoot(:+)).to eq 15
  end

  it "returns 15 when called without a block but argument" do
    array = ModifiedArray.new
    array << 1 << 2 << 3 << 4 << 5
    expect(array.shoot(:-)).to eq -15
  end

  it "strings" do

  end

end
