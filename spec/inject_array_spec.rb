require 'inject.rb'
# it can times using fold left

# it can add with a statrting point

# it can add with a symbol
# it can times with a starting point and a symbol

describe Array do
  context 'with a block'
  it 'can add using fold' do
    expect([1, 2, 3, 4].inject { |result, object| result + object }).to eq(10)
  end

  it 'can add using fold with my_inject' do
    expect([1, 2, 3, 4].my_inject { |result, object| result + object }).to eq(10)
  end
end
