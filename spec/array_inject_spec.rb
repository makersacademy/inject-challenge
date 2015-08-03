require 'array_inject'

describe Array do

  i = [1,2,3,4,5]
  s = ["A","B","C"]

  it { is_expected.to respond_to(:my_inject).with(1).argument }

  it "should sum [1,2,3,4,5] to give value of 15" do
    expect(i.my_inject {|value, n| value + n}).to eq i.inject {|value, n| value + n }
  end
  it "should sum [1,2,3,4,5] to give value of 17 with initial value set to 2" do
    expect(i.my_inject(2) {|value, n| value + n}).to eq i.inject(2) {|value, n| value + n }
  end
  it "should concatenate ['A','B','C'] to return of 'ABC'" do
   expect(s.my_inject {|value, n| value + n}).to eq "ABC"
  end
  it "should multiply [1,2,3,4,5] to give value of 120" do
   expect(i.my_inject {|value, n| value * n}).to eq i.inject {|value, n| value * n }
  end
  it "should divide [6,3] to give value of 120" do
   expect([6,3].my_inject {|value, n| value / n}).to eq [6,3].inject {|value, n| value / n }
  end
end
