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

  it 'uses inject to divide elements to make a quotient' do
    expect([30, 5, 2].inject { |sum, num| sum / num }).to eq 3
  end
  it 'uses custom_inject to divide elements to make a quotient' do
    expect([30, 5, 2].custom_inject { |sum, num| sum / num }).to eq 3
  end

  it 'uses inject to concatenate strings' do
    expect(%w(a short sentence).inject do |string, word|
      "#{string} #{word}"
    end).to eq 'a short sentence'
  end
  it 'uses custom_inject to concatenate strings' do
    expect(%w(a short sentence).custom_inject do |string, word|
      "#{string} #{word}"
    end).to eq 'a short sentence'
  end

  it 'uses inject to find longest word in list' do # Ex. from RubyDocs
    expect(%w(cat sheep bear).inject do |memo, word|
      memo.length > word.length ? memo : word
    end).to eq 'sheep'
  end
  it 'uses custom_inject to find longest word in list' do # Ex. from RubyDocs
    expect(%w(cat sheep bear).custom_inject do |memo, word|
      memo.length > word.length ? memo : word
    end).to eq 'sheep'
  end

  it 'uses inject with symbol to add elements together to make a sum' do
    expect([1, 2, 3, 4, 5].inject(:+)).to eq 15
  end
  it 'uses custom_inject with symbol to add elements together to make a sum' do
    expect([1, 2, 3, 4, 5].custom_inject(:+)).to eq 15
  end

  it 'uses inject to with symbol multiply elements together…' do
    expect([1, 2, 3, 4, 5].inject(:*)).to eq 120
  end
  it 'uses custom_inject with symbol to multiply elements together…' do
    expect([1, 2, 3, 4, 5].custom_inject(:*)).to eq 120
  end

  it 'uses inject with symbol to subtract elements to make a difference' do
    expect([1, 2, 3, 4, 5].inject(:-)).to eq(-13)
  end
  it 'uses custom_inject with symbol to subtract elements…' do
    expect([1, 2, 3, 4, 5].custom_inject(:-)).to eq(-13)
  end

  it 'uses inject with symbol to divide elements to make a quotient' do
    expect([30, 5, 2].inject(:/)).to eq 3
  end
  it 'uses custom_inject with symbol to divide elements to make a quotient' do
    expect([30, 5, 2].custom_inject(:/)).to eq 3
  end
end
