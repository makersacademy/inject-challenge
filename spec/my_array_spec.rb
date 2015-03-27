require 'my_array'

describe 'Array' do
  it 'can add' do
    expect([1, 2, 3].inject { |sum, n| sum + n }).to eq 6
    expect([1, 2, 3].my_inject { |sum, n| sum + n }).to eq 6
  end

  it 'can multiply' do
    expect([1, 2, 3].inject { |sum, n| sum * n }).to eq 6
    expect([1, 2, 3].my_inject { |sum, n| sum * n }).to eq 6
  end

  it 'can subtract' do
    expect([10, 5, 2].inject { |sum, n| sum - n }).to eq 3
    expect([10, 5, 2].my_inject { |sum, n| sum - n }).to eq 3
  end

  it 'can divide' do
    expect([1, 2, 3].inject { |sum, n| sum / n }).to eq 0
    expect([1, 2, 3].my_inject { |sum, n| sum / n }).to eq 0
  end

  it 'can add with starting point' do
    expect([1, 2, 3].inject(10) { |sum, n| sum + n }).to eq 16
    expect([1, 2, 3].my_inject(10) { |sum, n| sum + n }).to eq 16
  end

  it 'can multiply with a starting point' do
    expect([1, 2, 3].inject(10) { |sum, n| sum * n }).to eq 60
    expect([1, 2, 3].my_inject(10) { |sum, n| sum * n }).to eq 60
  end

  it 'can subtract with a starting point' do
    expect([1, 2, 3].inject(10) { |sum, n| sum - n }).to eq 4
    expect([1, 2, 3].my_inject(10) { |sum, n| sum - n }).to eq 4
  end

  it 'can divide with a starting point' do
    expect([2, 2, 2].inject(80) { |sum, n| sum / n }).to eq 10
    expect([2, 2, 2].my_inject(80) { |sum, n| sum / n }).to eq 10
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].inject(:+)).to eq 6
    expect([1, 2, 3].my_inject(:+)).to eq 6
  end

  it 'can multiply with a symbol' do
    expect([2, 5, 10].inject(:*)).to eq 100
    expect([2, 5, 10].my_inject(:*)).to eq 100
  end

  it 'can subtract with a symbol' do
    expect([50, 20, 3].inject(:-)).to eq 27
    expect([50, 20, 3].my_inject(:-)).to eq 27
  end

  it 'can divide with a symbol' do
    expect([80, 2, 2].inject(:/)).to eq 20
    expect([80, 2, 2].my_inject(:/)).to eq 20
  end
end
