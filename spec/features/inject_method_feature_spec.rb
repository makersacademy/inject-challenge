require 'array'
describe 'method works the same way as inject:' do

  it 'with strings' do
    array = ["inject", "is", "cool"]
    expect(array.molliesinject { |sentence, word| sentence + word }).to eq "injectiscool"
  end

  it 'with numbers and simple sums' do
    array = [1, 2]
    array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    expect(array.molliesinject { |tot, num| tot + num }).to eq 3
    expect(array2.molliesinject { |tot, num| tot + num }).to eq 55
    expect(array.molliesinject { |tot, num| tot - num }).to eq -1
    expect(array.molliesinject { |tot, num| tot * num }).to be 2
  end

  xit 'takes an optional starting point' do
    array = [1, 2, 3, 4, 5, 6, 7]
    expect(array.molliesinject(2) {|tot, num| tot + num }).to eq 30
  end
end