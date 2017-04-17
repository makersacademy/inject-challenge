require 'injector'

describe Array do

context 'dave_inject' do
  it 'addition injection' do
  expect([1,2,3,4,5].dave_inject(0){|a, b| a + b}).to eq 15
  end

  it 'addition injection' do
  expect([1,2,3,4,5].dave_inject{|a, b| a + b}).to eq 15
  end

  it 'subtraction injection' do
  expect([1,2,3,4].dave_inject(12){|a, b| a - b}).to eq 2
  end

  it 'multiplication injection' do
  expect([1,2,3,4].dave_inject(1){|a, b| a * b}).to eq 24
  end

  it 'division injection' do
  expect([1,2,3,4].dave_inject(120){|a, b| a / b}).to eq 5
  end
end

end