require 'daryl_inject'

describe Array do

  it 'adds up an array of numbers' do
    output = (1..10).to_a.daryl_inject(0) { |sum, number| sum + number }
    p output
    expect(output).to eq ((1..10)).inject(0) { |sum, number| sum + number }
  end

  it 'adds up an array of numbers without default value' do
    output = (1..10).to_a.daryl_inject { |sum, number| sum + number }
    p output
    expect(output).to eq ((1..10)).inject { |sum, number| sum + number }
  end

  it 'adds up an array of numbers without default value' do
    output = (1..4).to_a.daryl_inject { |sum, number| sum + number }
    p output
    expect(output).to eq ((1..4)).inject { |sum, number| sum + number }
  end

  it 'subtracts up an array of numbers' do
    output = (1..10).to_a.daryl_inject(0) { |sum, number| sum - number }
    p output
    expect(output).to eq ((1..10)).inject(0) { |sum, number| sum - number }
  end

end