require 'inject_custom'

describe do

  it 'sums all numbers' do
    items = ArrayWrapper.new(1,2,3,4)
    result = items.inject_this(0) do |accumulator,element|
      accumulator + element
    end
    expect(result).to eq(10)
  end

  it 'multiplies all numbers' do
    items = ArrayWrapper.new(1,2,3,4)
    result = items.inject_this(1) do |accumulator,element|
      accumulator * element
    end
    expect(result).to eq(24)
  end

  it 'returns the accumulator if no value is provided' do
    items = ArrayWrapper.new
    result = items.inject_this(20) do |accumulator,element|
      accumulator + element
    end
    expect(result).to eq(20)
  end



end
