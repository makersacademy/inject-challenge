require 'challay'

describe 'Challay' do

  let(:test) {Challay.new}

  def populate
    test << 1
    test << 2
    test << 500
    test << 30
  end

  it 'raises an error if not passed a block' do
    populate
    expect{test.inject}.to raise_error
  end

  it 'takes the block {|sum, x| sum + x} and return cumulative sum' do
    populate
    expect(test.inject{|sum,x| sum+x}).to eq 533
  end

  it 'takes the block {|max, x| max > x ? max : x} and return array max' do
    populate
    expect(test.inject{|max,x| max > x ? max : x}).to eq 500
  end

  it 'takes (:+) and performs a cumulative sum' do
    populate
    expect(test.inject(:+)).to eq 533
  end

  it 'takes (:*) and performs cumulative multiplication' do
    test << 1
    test << 2
    test << 3
    expect(test.inject(:*)).to eq 6
  end

  it 'takes (50,:+) and performs a cumulative sum on top of 50' do
    populate
    expect(test.inject(50,:+)).to eq 583
  end

  it 'will take (50) and {|sum, x| sum + x}, and return the cum sum starting with 50' do
    test << 1
    test << 2
    test << 3
    expect(test.inject(50){|sum, x| sum + x}).to eq 56

  end

end
