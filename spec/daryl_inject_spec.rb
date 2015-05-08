require 'daryl_inject'

describe Array do

  it 'adds up an array of numbers' do
    output = (1..10).to_a.daryl_inject(0) { |sum, number| sum + number }
    expect(output).to eq ((1..10)).inject(0) { |sum, number| sum + number }
  end

  it 'adds up an array of numbers without default value' do
    output = (1..10).to_a.daryl_inject { |sum, number| sum + number }
    expect(output).to eq ((1..10)).inject { |sum, number| sum + number }
  end

  it 'adds up an array of numbers without default value' do
    output = (1..4).to_a.daryl_inject { |sum, number| sum + number }
    expect(output).to eq ((1..4)).inject { |sum, number| sum + number }
  end

  it 'subtracts up an array of numbers' do
    output = (1..10).to_a.daryl_inject(0) { |sum, number| sum - number }
    expect(output).to eq ((1..10)).inject(0) { |sum, number| sum - number }
  end

  it 'multiplies up an array of numbers' do
    output = (1..50).to_a.daryl_inject(1) { |sum, number| sum * number }
    expect(output).to eq ((1..50)).inject(1) { |sum, number| sum * number }
  end

  it 'multiplies up an array of numbers without a default' do
    output = (1..50).to_a.daryl_inject { |sum, number| sum * number }
    expect(output).to eq ((1..50)).inject { |sum, number| sum * number }
  end

  it 'can handle strings' do
    output = ['Daryl, Tim, Ptolemy, Ben, Sam']
    result = output.daryl_inject { |sum, firstword| sum + firstword }
    expect(result).to eq output.inject { |sum, firstword| sum + firstword }
  end

  it 'can do recursion style' do
    output = (1..10).to_a.daryl_inject2(0) { |sum, number| sum + number }
    expect(output).to eq ((1..10)).inject(0) { |sum, number| sum + number }
  end

  it 'can do recursion style without a default' do
    output = (1..10).to_a.daryl_inject2 { |sum, number| sum + number }
    expect(output).to eq ((1..10)).inject(0) { |sum, number| sum + number }
  end

end