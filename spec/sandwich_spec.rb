require 'sandwich_in'

describe Array do
  context 'the sandwich_in method'

  it 'returns the argument given an empty array' do
    array = []
    expect(array.sandwich_in 5).to eq(5)
  end

  it 'sums all numbers in an array' do
    array = [1,2,3,4]
    expect(array.sandwich_in 0).to eq 10
  end

end
