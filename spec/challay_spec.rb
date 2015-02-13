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
    expect{test.inject}.to raise_error
  end

  it 'should take the block {|sum, x| sum + x} and return cumulative sum' do
    populate
    expect(test.inject{|sum,x| sum+x}).to eq 533
  end

  it 'should take the block {|max, x| max > x ? max : x} and return array max' do
    populate
    expect(test.inject{|max,x| max > x ? max : x}).to eq 500
  end


end