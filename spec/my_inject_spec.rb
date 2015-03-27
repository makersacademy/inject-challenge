require 'my_inject'

describe 'Array' do
  it 'can add' do
    expect([1, 2, 3].inject { |sum, n| sum + n }).to eq 6
    expect([1, 2, 3].my_inject { |sum, n| sum + n }).to eq 6
  end

  it 'can multiply' do
    expect([1, 2, 3].inject { |sum, n| sum * n }).to eq 6
    expect([1, 2, 3].my_inject { |sum, n| sum * n }).to eq 6
  end

  it 'can add with starting point' do
    expect([1, 2, 3].inject(10) { |sum, n| sum + n }).to eq 16
    expect([1, 2, 3].my_inject(10) { |sum, n| sum + n }).to eq 16
  end

  it 'can multiply with a starting point' do
    expect([1, 2, 3].inject(10) { |sum, n| sum * n }).to eq 60
    expect([1, 2, 3].my_inject(10) { |sum, n| sum * n }).to eq 60
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].inject(:+)).to eq 6
    # expect([1, 2, 3].my_inject(:+)).to eq 6
  end

  it 'can multiply with a starting point' do
    expect([1, 2, 3].inject(10) { |sum, n| sum * n }).to eq 60
    # expect([1, 2, 3].my_inject(10) { |sum, n| sum * n }).to eq 60
  end
end
