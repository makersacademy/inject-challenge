require 'my_inject'

describe Array do
  it 'takes block to add numbers in an array' do
    expect([1, 4, 5].inject { |sum, num| sum + num }).to eq 10
    expect([1, 4, 5].my_inject { |sum, num| sum + num }).to eq 10
  end
  it 'takes block to multiply numbers in an array' do
    expect([1, 4, 5].my_inject { |sum, num| sum * num }).to eq 20
    expect([1, 4, 5].my_inject { |sum, num| sum * num }).to eq 20
  end
  it 'takes block to add numbers in an array with a start number' do
    expect([1, 4, 5].inject(3) { |sum, num| sum + num }).to eq 13
    expect([1, 4, 5].my_inject(3) { |sum, num| sum + num }).to eq 13
  end
end
