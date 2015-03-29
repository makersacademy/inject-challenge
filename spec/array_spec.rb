require 'inject'

describe Array do
  # Test passed
  it '(Test 1) can add' do
    expect([1, 2, 3].my_inject { |acc, arg| acc + arg }).to eq 6
  end
  # Test passed
  it '(Test 2) can multiply' do
    expect([1, 2, 3].my_inject { |acc, arg| acc * arg }).to eq 6
  end

  it '(Test 3) can add with a starting point' do
    expect([1, 2, 3].my_inject(4) { |acc, arg| acc + arg }).to eq 10
  end

  it '(Test 4) can multiply with a starting point' do
    expect([1, 2, 3].my_inject(4) { |acc, arg| acc * arg }).to eq 24
  end
  # Test passed
  it '(Test 5) can add with a starting point and \'+\' symbol' do
    expect([1, 2, 3].my_inject(4, :+)).to eq 10
  end
  # Test passed
  it '(Test 6) can multiply with a starting point and \'*\' symbol' do
    expect([1, 2, 3].my_inject(4, :*)).to eq 24
  end
  # Test passed
  it '(Test 7) can add with a \':+\' symbol' do
    expect([1, 2, 3].my_inject(:+)).to eq 6
  end
  # Test passed
  it '(Test 8) can multiply with a \':*\' symbol' do
    expect([1, 2, 3].my_inject(:*)).to eq 6
  end
end
