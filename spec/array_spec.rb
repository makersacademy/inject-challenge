require 'recursive_inject'

describe Array do
  it "can add" do
    expect([1,2,3].inject{|memory, element| memory + element}).to eq 6
    expect([1,2,3].my_inject{|memory, element| memory + element}).to eq 6
  end

  it "can times" do
    expect([1,2,3].inject{|memory, element| memory * element}).to eq 6
    expect([1,2,3].my_inject{|memory, element| memory * element}).to eq 6
  end

  it "can add with a starting point" do
    expect( [1,2,3].inject(10){|memory, element| memory + element} ).to eq 16
    expect( [1,2,3].my_inject(10){|memory, element| memory + element} ).to eq 16
  end

  it "can times with a starting point" do
    expect([1,2,3].inject(10){|memory, element| memory * element}).to eq 60
    expect([1,2,3].my_inject(10){|memory, element| memory * element}).to eq 60
  end

  it "can add with a starting point and a symbol" do
    expect([1,2,3].inject(10, :+)).to eq 16
    expect([1,2,3].my_inject(10, :+)).to eq 16
  end

  it "can times with a starting point and a symbol" do
    expect([1,2,3].inject(10, :*)).to eq 60
    expect([1,2,3].my_inject(10, :*)).to eq 60
  end
end
