require 'inject'

describe Array do
  it 'sums numbers' do
    expect([4,2,3,9].new_inject(0) { |res, ele| res + ele }).to eq 18
    expect([1,2,3,4].new_inject(0) { |res, ele| res + ele }).to eq 10
  end

  it 'works without a starting parameter' do
    expect([3,9,4].new_inject { |res, ele| res - ele} ).to eq -10
  end

  it 'can take a numeric starting parameter' do
    expect([7,3,1,6].new_inject(10) { |res, ele| res + ele }).to eq 27
  end

  it 'can multiply' do
    expect([2,3,4].new_inject(0) { |res, ele| res * ele }).to eq 0
  end

  it 'can multiply with a numeric parameter' do
    expect([2,3,4].new_inject(4) { |res, ele| res * ele }).to eq 96
  end

  it 'can work with strings' do
    expect(["this","is","a","test"].new_inject { |res, ele| res + ele }).to eq "thisisatest"
  end

  it 'can work with strings and a string parameter' do
    expect(["this","is","a","test"].new_inject("new") { |res, ele| res + ele }).to eq "newthisisatest"
  end
end
