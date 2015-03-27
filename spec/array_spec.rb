require 'array'

describe Array do
  it 'uses inject to add elements together to make a sum' do
    expect([1, 2, 3, 4, 5].inject { |sum, num| sum + num }).to eq 15
  end
  it 'uses custom_inject to add elements together to make a sum' do
    expect([1, 2, 3, 4, 5].custom_inject { |sum, num| sum + num }).to eq 15
  end

  it 'uses inject to multiply elements together to make a product' do
    expect([1, 2, 3, 4, 5].inject { |sum, num| sum * num }).to eq 120
  end
  it 'uses custom_inject to multiply elements together to make a product' do
    expect([1, 2, 3, 4, 5].custom_inject { |sum, num| sum * num }).to eq 120
  end

  it 'uses inject to subtract elements to make a difference' do
    expect([1, 2, 3, 4, 5].inject { |sum, num| sum - num }).to eq(-13)
  end
  it 'uses custom_inject to subtract elements to make a difference' do
    expect([1, 2, 3, 4, 5].custom_inject { |sum, num| sum - num }).to eq(-13)
  end
end
