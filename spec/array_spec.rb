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
  it 'multiplies ' do
    expect([2, 2, 4].inject { |num, sum| num * sum }).to eq 16
    expect([2, 2, 4].my_inject { |num, sum| num * sum }).to eq 16
  end
  it 'multiplies array values together with initial number arg' do
    expect([2, 2, 4].inject(2) { |num, sum| num * sum }).to eq 32
    expect([2, 2, 4].my_inject(2) { |num, sum| num * sum }).to eq 32
  end
  # it 'calculate division from 0' do
  #   expect([1, 2, 3].my_inject(0) { |num, sum| num / sum }).to eq 0
  #   expect([1, 2, 3].inject(0) { |num, sum| num / sum }).to eq 0
  # end
  # it 'calculate division' do
  #   expect([50, 2, 2].my_inject { |num, sum| num / sum }).to eq 12
  #   expect([50, 2, 2].inject { |num, sum| num / sum }).to eq 12
  # end
  it 'calculate sum of array with symbol +' do
    expect([1, 2, 3].my_inject(:+)).to eq 6
    expect([1, 2, 3].inject(:+)).to eq 6
  end
  it 'calculate sum of array with symbol *' do
    expect([2, 2, 4].my_inject(:*)).to eq 16
    expect([2, 2, 4].inject(:*)).to eq 16
  end
  it 'calculate sum of array with initial number arg and symbol + ' do
    expect([1, 2, 3].my_inject(2, :+)).to eq 8
    expect([1, 2, 3].inject(2, :+)).to eq 8
  end
  # it 'multiplies with initial number arg and symbol *' do
  #   expect([1, 2, 3].my_inject(2, :*)).to eq 12
  #   expect([1, 2, 3].inject(2, :*)).to eq 12
  # end
end
