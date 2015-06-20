require 'new_inject'

describe 'inject challenge is to rewrite the inject method for enumerables' do

  it 'adds all elements together' do
    expect((5..10).new_inject { |sum, n| sum + n }).to eq 45
  end

  it 'multiplies all elements together' do
    expect((5..10).new_inject(1) { |product, n| product * n }).to eq 151200
  end

  it 'concats strings' do
    expect(("a".."z").new_inject{|sum, n| sum + n}).to eq "abcdefghijklmnopqrstuvwxyz"
  end

  it 'builds a hash from a an array of arrays' do
    array = [['A', 1], ['B', 2], ['C', 3]]
    hash = array.new_inject({}) do |memo, (key, value)|
      memo[key] = value
      memo
    end
    expect(hash).to eq({'A' => 1, 'B' => 2, 'C' => 3})
  end

end
