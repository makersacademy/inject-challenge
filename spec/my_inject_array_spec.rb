# Needs to take a block, iterate over all the items in that block
# and be able to:
# - Add them all
# - multiply them all
# - Do the above with starting points
# - Do the above with (i.e. don't pass in a block, just pass in (:+))

require 'my_inject'

describe Array do
  it 'inject and my_inject can add items in an array' do
    expect([1, 2, 3].inject { |acc, element| acc + element }).to eq 6
    expect([1, 2, 3].my_inject { |acc, element| acc + element }).to eq 6
  end

  it 'inject and my_inject can multiply items in an array' do
    expect([1, 2, 3, 4].inject { |acc, element| acc * element }).to eq 24
    expect([1, 2, 3, 4].my_inject { |acc, element| acc * element }).to eq 24
  end

  # Inject seems to always return zero, so maybe this is irrelevant?
  # Possibly rework the array though.
  xit 'inject and my_inject can divide items in an array' do
    expect([1, 2, 3, 4].inject { |acc, element| acc / element }).to eq 0
    expect([1, 2, 3, 4].my_inject { |acc, element| acc / element }).to eq 0
  end

  it 'inject and my_inject can add items, given a starting point' do
    expect([1, 2, 3].inject(2) { |acc, element| acc + element }).to eq 8
    expect([1, 2, 3].my_inject(2) { |acc, element| acc + element }).to eq 8
  end

  it 'inject and my_inject can multiply items, given a starting point' do
    expect([1, 2, 3, 4].inject(2) { |acc, element| acc * element }).to eq 48
    expect([1, 2, 3, 4].my_inject(2) { |acc, element| acc * element }).to eq 48
  end

  it 'inject and my_inject can minus items in an array' do
    expect([1, 2, 3].inject { |acc, element| acc - element }).to eq(-4)
    expect([1, 2, 3].my_inject { |acc, element| acc - element }).to eq(-4)
  end

  it 'inject and my_inject can - items in an array, with a starting point' do
    expect([1, 2, 3].inject(-1) { |acc, element| acc - element }).to eq(-7)
    expect([1, 2, 3].my_inject(-1) { |acc, element| acc - element }).to eq(-7)
  end
end

# Add symbol tests here
