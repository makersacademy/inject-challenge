require 'inject'

describe Array do
  it 'can add up an array of numbers' do
    array = Array.new
    output = (1..10).to array.aggregate { | sum, number | s + n }
    expect(output_to eq(1..10).to_array.inject { |sum, number | s + n })
  end

end