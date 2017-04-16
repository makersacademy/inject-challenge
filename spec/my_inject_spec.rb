require 'my_inject'

describe Array do

  let(:array) { [1, 2, 3, 4] }

  it "can add numbers" do
    expect(array.inject { |m, n| m + n }).to eq 10
    expect(array.my_inject { |m, n| m + n }).to eq 10
  end

  it "can multiple numbers" do
    expect(array.inject { |m, n| m * n }).to eq 24
    expect(array.my_inject { |m, n| m * n }).to eq 24
  end

  it "can add numbers with a starting point"  do
    expect(array.inject(2) { |m, n| m + n }).to eq 12
    expect(array.my_inject(2) { |m, n| m + n }).to eq 12
  end

  it "can multiple numbers with a starting point" do
    expect(array.inject(2) { |m, n| m * n }).to eq 48
    expect(array.my_inject(2) { |m, n| m * n }).to eq 48
  end

  it "can get a symbole and add numbers" do 
    expect(array.inject(:+)).to eq 10
    expect(array.my_inject(:+)).to eq 10
  end  

end