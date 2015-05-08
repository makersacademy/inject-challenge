require 'array'
describe 'method works the same way as inject:' do

  it 'with numbers' do
    array = [1, 2, 3, 4, 5]
    expect(array.molliesinject{|tot, num| tot + num}).to be 15
  end

  xit 'takes an optional starting point' do

  end

end