require 'array'
describe Array do
  it 'calculate sum of array' do
    result = [1, 2, 3].my_inject(0) { |num, sum| num + sum }
    expect(result).to eq 6
  end
end
