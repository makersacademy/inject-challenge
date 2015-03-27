require 'my_array'

describe MyArray do
  it 'can sum elements in an array together using a block' do
    expect([1, 2, 3, 4, 5].inject { |sum, item| sum += item }).to eq 15
  end

  it 'can sum elements in an array using a block, with a start point' do
    expect([1, 2, 3, 4, 5].inject(5) { |sum, item| sum += item }).to eq 20
  end

  it 'can sum elements in an array using a symbol' do
    expect([1, 2, 3, 4, 5].inject(:+)).to eq 15
  end

  it 'can multiply elements in an array using a symbol' do
    expect([1, 2, 3, 4, 5].inject(5, :*)).to eq 600
  end

  it 'can concatenate an array to a string' do
    expect(("A".."E").inject(:+)).to eq "ABCDE"
  end

end