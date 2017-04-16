require 'inject'

describe Array do

  xit 'can add' do
    expect([1, 2, 3, 4].inject { |memo, element| memo + element }).to eq 10
    expect([1, 2, 3, 4].my_inject { |memo, element| memo + element }).to eq 10
  end

  xit 'can add with a starting point' do
    expect([1, 2, 3, 4].inject(10) { |memo, element| memo + element }).to eq 20
    expect([1, 2, 3, 4].my_inject(10) { |memo, element| memo + element }).to eq 20
  end

  xit 'can multiply' do
    expect([2, 2, 3].inject { |memo, element| memo * element }).to eq 12
    expect([2, 2, 3].my_inject { |memo, element| memo * element }).to eq 12
  end

  xit 'can multiply with a starting point' do
    expect([1, 2, 3, 4].inject(10) { |memo, element| memo * element }).to eq 240
    expect([1, 2, 3, 4].my_inject(10) { |memo, element| memo * element }).to eq 240
  end

  xit 'can add with a symbol' do
    expect([1, 2, 3, 4].inject(:+)).to eq 10
    expect([1, 2, 3, 4].my_inject(:+)).to eq 10
  end

  xit 'can add with a symbol and a starting point' do
    expect([1, 2, 3, 4].inject(10, :+)).to eq 20
    expect([1, 2, 3, 4].my_inject(10, :+)).to eq 20
  end

  xit 'can find the longest string' do
    expect(['one', 'two', 'three', 'four', 'five'].my_inject do |memo, number|
       if memo.length > number.length
         memo
       else
         number
       end
     end).to eq "three"
  end

  # it 'can divide' do
  #   expect([100.0, 10.0, 2.0].inject { |memo, element| memo / element }).to eq 5
  #   expect([100.0, 10.0, 2.0].my_inject { |memo, element| memo / element }).to eq 5
  # end
  #
  # it 'can minus with a starting point' do
  #   expect([1, 2, 3, 4].inject(10) { |memo, element| memo - element }).to eq 4
  #   expect([1, 2, 3, 4].my_inject(10) { |memo, element| memo - element }).to eq 4
  # end
  #

  #
  # it 'can divide with a starting point' do
  #   expect([100, 10, 2].inject(2.0) { |memo, element| memo / element }).to eq 0.001
  #   expect([100, 10, 2].my_inject(2.0) { |memo, element| memo / element }).to eq 0.001
  # end
  #

  # it 'can minus' do
  #   expect([1, 2, 3, 4].inject { |memo, element| memo - element }).to eq -8
  #   expect([1, 2, 3, 4].my_inject { |memo, element| memo - element }).to eq -8
  # end

end
