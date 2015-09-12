require 'new_inject'

describe Array do
  it 'reponds to the inject! method' do
    expect(Array.new).to respond_to(:inject!)
  end

  it 'sums an array of integers 'do
    array=[1,2,3,4]
    expect(array.inject!(0) {|result, element| result + element}).to eq(10)
  end

  it 'matches the interal inject method this block' do
    array=[9,2,5,4]
    comparison=array.inject(){|result, element| element*result**2}

    expect(array.inject!(){|result, element| element*result**2}). to eq(comparison)
  end



end
