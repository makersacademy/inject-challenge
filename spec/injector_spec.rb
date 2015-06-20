require 'injector'

describe Array do

  it 'returns 8 when passed { |sum, n| sum + n } on [1, 5, 2]' do
    expect([1, 5, 2].injector { |sum, n| sum + n }).to eq 8
  end
  
  it 'returns "sheep" when passed do |memo, word| memo.length > word.length ? memo : word end on ["cat", "sheep", "bear"]' do
    ['cat', 'sheep', 'bear'].injector do |memo, word|
	  memo.length > word.length ? memo : word 
    end
  end

  it 'returns 151200 when passed { |product, n| product * n } on [5, 6, 7, 8, 9, 10]' do
    expect([5, 6, 7, 8, 9, 10].injector { |product, n| product * n }).to eq 151200
  end

  it 'returns 1 when passed { |sum, n| sum + n } on [1]' do 
    expect([1].injector { |sum, n| sum + n }).to eq 1
  end
  
  it 'returns -1 when passed { |sum, n| sum + n } on [-2, 1]' do 
    expect([-2, 1].injector { |sum, n| sum + n }).to eq -1
  end

  it 'returns 6 when passed { |product, n| product * n } on [-2, -3]' do
    expect([-2, -3].injector { |product, n| product * n }).to eq 6
  end
end