require 'my_inject'

describe Array do
  let(:array) { [1, 2, 3, 4] }
  it 'can add' do
    expect(array.inject { |sum, e| sum + e }).to eq 10
    expect(array.my_inject { |sum, e| sum + e }).to eq 10
  end

  it 'can times' do
    expect(array.inject { |sum, e| sum * e }).to eq 24
  end

  it 'can add with a starting point' do
    expect(array.inject(10) { |sum, e| sum + e }).to eq 20
  end

  it 'can times with a starting point' do
    expect(array.inject(10) { |sum, e| sum * e }).to eq 240
  end

  it 'can add with a symbol' do
    expect(array.inject(:+)).to eq 10
  end

  it 'can times with a starting point and a symbol' do
    expect(array.inject(10, :*)).to eq 240
  end
end