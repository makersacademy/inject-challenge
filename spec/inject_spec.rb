require 'inject'

describe Array do
  it "can add" do
    expect([1,2,3].inject {|m,e| m + e} ).to eq 6
    expect([1,2,3].my_inject {|m,e| m + e} ).to eq 6
  end

  it "can times" do
     expect([1,2,3].inject {|m,e| m * e} ).to eq 6
     expect([1,2,3].my_inject {|m,e| m * e} ).to eq 6
  end

  it "can add with a stated starting point" do
     expect([1,2,3,4,5].inject(2) {|m,e| m + e} ).to eq 17
     expect([1,2,3,4,5].my_inject(2) {|m,e| m + e} ).to eq 17
  end

  it "can times with a stated starting point" do
     expect([1,2,3,4,5].inject(2) {|m,e| m * e} ).to eq 240
     expect([1,2,3,4,5].my_inject(2) {|m,e| m * e} ).to eq 240
  end

  it "can handle a string input as a starting point" do
      expect(["1", "2", "3"].inject("4") {|m,e| m + e} ).to eq "4123"
      expect(["1", "2", "3"].my_inject("4") {|m,e| m + e} ).to eq "4123"
  end
end