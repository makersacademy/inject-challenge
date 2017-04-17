require 'inject'

describe TestArray do

  it 'sums the array' do
    numbers = [1,2,3]
    expect(subject.sum_numbers(numbers)).to eq 6
  end

  it 'picks the shortest word' do
    words = ['battle', 'ship', 'inject', 'cat']
    expect(subject.shortest(words)).to eq 'cat'
  end
end