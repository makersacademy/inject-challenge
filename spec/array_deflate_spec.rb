require 'rspec'
require 'deflate'

describe Array do

  it 'can return a sum of its contents' do
    expect([1, 2, 3].deflate { |sum, num| sum += num }).to eq 6
  end

  it 'can return the result of reducing its contents' do
    expect([1, 2, 3].deflate { |sum, num| sum -= num }).to eq(-4)
  end

  it 'can return the result of multiplying its contents' do
    expect([1, 2, 3].deflate { |sum, num| sum *= num }).to eq(6)
  end

  it 'can add its contents to a starting number' do
    expect([1, 2, 3].deflate(10) { |sum, num| sum += num }).to eq 16
  end

  it 'can return the result of reducing its contents from a starting number' do
    expect([1, 2, 3].deflate(10) { |sum, num| sum -= num }).to eq 4
  end

  it 'returns the result of multiplying its contents from a starting number' do
    expect([1, 2, 3].deflate(10) { |sum, num| sum *= num }).to eq(60)
  end

  it 'can take a symbol and apply that to its contents' do
    expect([1, 2, 3].deflate :+).to eq(6)

    expect([1, 2, 3].deflate :*).to eq(6)

    expect([1, 2, 3].deflate :-).to eq(-4)
  end
end
