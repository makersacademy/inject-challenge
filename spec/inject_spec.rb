require 'inject'

describe Array do 

  it 'can update each element by one' do
    array = [1,2,3]
    expect(array.map { |x| x + 1}).to eq [2,3,4]
    expect(array.mapper { |x| x + 1}).to eq [2,3,4]
  end

  it 'can provide the same function as inject' do
    array = [1,2,3]
    expect(array.inject { |x,y| x + y}).to eq 6
    expect(array.new_inject { |x,y| x + y}).to eq 6
  end
end