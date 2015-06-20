require 'injector'

describe Array do

  it 'returns 8 when passed { |sum, n| } on [1, 5, 2]' do
    expect([1, 5, 2].injector { |sum, n| sum + n }).to eq 8
  end
  
  it 'returns "sheep" when passed ["cat", "sheep", "bear"]' do
    ['cat', 'sheep', 'bear'].injector do |memo, word|
	  memo.length > word.length ? memo : word 
	end
  end

  it 'returns 151200 when passed (5..10)' do
    expect([5, 6, 7, 8, 9, 10].injector { |product, n| product * n }).to eq 151200
  end
end