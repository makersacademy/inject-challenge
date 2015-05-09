require './lib/ninject.rb'

describe Array do

  xit 'Sum some numbers' do
    expect([5,6,7,8,9,10].ninject(:+)).to eq (5..10).reduce(:+)
  end

  it 'Same using a block and inject' do
    expect([5,6,7,8,9,10].ninject { |sum, n| sum + n }).to eq ((5..10).inject { |sum, n| sum + n })
  end

  xit 'Multiply some numbers' do
    expect([5,6,7,8,9,10].ninject(1, :*)).to eq (5..10).reduce(1, :*)
  end

  it 'Same using a block' do
    expect([5,6,7,8,9,10].ninject(1) { |product, n| product * n }).to eq (5..10).inject(1) { |product, n| product * n }
  end

  it 'Same using a block and custom initial value for memo' do
    expect([3,4].ninject(2) { |product, n| product * n }).to eq [3,4].inject(2) { |product, n| product * n }
  end

  it 'find the longest word' do
    expect(%w{ cat sheep bear }.inject {|memo, word| memo.length > word.length ? memo : word}).to eq 'sheep'
  end
end
