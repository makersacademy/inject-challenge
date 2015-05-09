require 'inject'

describe Array do
  it "can add" do
    expect([1,2,3].inject {|m,e| m + e}).to eq 6
    expect([1,2,3].my_inject {|m,e| m + e} ).to eq 6
  end

  it "can times" do
     expect([1,2,3].inject {|m,e| m * e}).to eq 6
    expect([1,2,3].my_inject {|m,e| m * e} ).to eq 6
  end
end