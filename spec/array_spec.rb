require 'array'

describe Array do

  it 'uses the ruby inject method' do
    expect([1,2,3,4].inject(0){ |result, element| result + element}).to eq(10)
  end

  it 'should add members inside an array' do
    expect([1,2,3,4].my_inject { |x, y| x + y } ).to eq(10)
  end

  it 'should multiply the numbers inside an array' do
    expect([1,2,3,4].my_inject { |x, y| x * y } ).to eq(24)
  end

  it 'should subtract members inside an array' do
    expect([1,2,3,4].my_inject { |x, y| x - y } ).to eq(-8)
  end
  
end
