require 'inject_custom'

describe do

  it 'sums all numbers' do
    items = ArrayWrapper.new(1,2,3,4)
    result = items.inject_new(0) do |accumulator,element|
      accumulator + element
    end
    expect(result).to eq(10)
  end

end
