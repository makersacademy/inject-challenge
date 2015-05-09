require './lib/ninject.rb'
describe Array do
  xit 'Sum some numbers' do
    output = [5, 6, 7, 8, 9, 10].ninject(:+)
    expect(output).to eq(5..10).reduce(:+)
  end

  it 'Same using a block and inject' do
    output = [5, 6, 7, 8, 9, 10].ninject { |sum, n| sum + n }
    expect(output).to eq((5..10).inject { |sum, n| sum + n })
  end

  xit 'Multiply some numbers' do
    output = [5, 6, 7, 8, 9, 10].ninject(1, :*)
    expect(output).to eq((5..10).reduce(1, :*))
  end

  it 'Same using a block' do
    output = [5, 6, 7, 8, 9, 10].ninject(1) { |product, n| product * n }
    expect(output).to eq((5..10).inject(1) { |product, n| product * n })
  end

  it 'Same using a block and custom initial value for memo' do
    output = [3, 4].ninject(2) { |product, n| product * n }
    expect(output).to eq([3, 4].inject(2) { |product, n| product * n })
  end

  it 'find the longest word' do
    output = %w(cat sheep bear).ninject { |memo, word| memo.length > word.length ? memo : word }
    expect(output).to eq 'sheep'
  end
end
