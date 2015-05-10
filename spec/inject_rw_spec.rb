require 'inject_rw'

describe Array do

  it 'sums an array of numbers' do
  expect([1,2,3,4].inject_rw(0) { |sum, n| sum + n }).to eq [1,2,3,4].inject(0) { |sum, n| sum + n }
  end

end