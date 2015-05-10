require 'inject_rewrite'

describe Array do

  it { is_expected.to respond_to :inject_rewrite }

  it 'can add up elements in the array' do
    expect([1,2,3,4].inject_rewrite { |result,element| result+element }).to eq(10)
    expect(["ab","cd","ef"].inject_rewrite { |result,element| result+element }).to eq("abcdef")
  end

  it 'can multiply elements in the array' do
    expect([1,2,3,4].inject_rewrite { |result, element| result*element }).to eq(24)
  end

  it 'can take an initial value' do
    expect([1,2,3,4].inject_rewrite(10) { |result,element| result+element }).to eq(20)
  end

end