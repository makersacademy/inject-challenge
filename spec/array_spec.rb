require 'array'
describe Array do
  it 'calculate sum of array from 0' do
    expect([1, 2, 3].my_inject(0) { |num, sum| num + sum }).to eq 6
    expect([1, 2, 3].inject(0) { |num, sum| num + sum }).to eq 6
  end
  it 'calculate sum of array from 2' do
    expect([1, 2, 3].my_inject(2) { |num, sum| num + sum }).to eq 8
    expect([1, 2, 3].inject(2) { |num, sum| num + sum }).to eq 8
  end
  it 'multiplies array values together' do
    expect([2, 2, 4].inject { |num, sum| num * sum }).to eq 16
    expect([2, 2, 4].my_inject { |num, sum| num * sum }).to eq 16
  end
  it 'multiplies array values together with argument' do
    expect([2, 2, 4].inject(2) { |num, sum| num * sum }).to eq 32
    expect([2, 2, 4].my_inject(2) { |num, sum| num * sum }).to eq 32
  end
end
