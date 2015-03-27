require 'my_inject'

describe Array do
  it 'adds numbers in an array' do
    expect([1, 4, 5].inject { |sum, num| sum + num }).to eq 10
    expect([1, 4, 5].my_inject { |sum, num| sum + num }).to eq 10
  end
  it 'multiplies numbers in an array' do
    expect([1, 4, 5].my_inject { |sum, num| sum * num }).to eq 20
    expect([1, 4, 5].my_inject { |sum, num| sum * num }).to eq 20
  end
end
