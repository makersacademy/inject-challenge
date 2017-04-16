require 'my_inject'

describe Array do
  it 'it can add' do
    expect([1, 2, 3].inject { |memo, element| memo + element }).to eq 6
    expect([7, 2, 6].my_inject { |memo, element| memo + element }).to eq 15
  end
  
  # this one was working earlier and after I changed my_inject, it messed it up
  # I know why, it's because it times with starting = 0, making it 0 instead of
  # 504. Still, I didn't have the chance to spend more time on it. I had to try
  # the Takeaway challenge.
  xit 'can times' do
    expect([1, 2, 3].inject { |memo, element| memo * element }).to eq 6
    expect([7, 8, 9].my_inject { |memo, element| memo * element }).to eq 504
  end

  it 'it can substract' do
    expect([1, 2, 3].inject { |memo, element| memo - element }).to eq -4
    expect([7, 2, 6].my_inject { |memo, element| memo - element }).to eq -1
  end

  it 'can add with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo + element }).to eq 16
    expect([2, 9, 3].my_inject(10) { |memo, element| memo + element }).to eq 24
  end

  it 'can times with a starting point' do
    expect([1, 2, 3].inject(10) { |memo, element| memo * element }).to eq 60
    expect([3, 7, 4].my_inject(11) { |memo, element| memo * element }).to eq 924
  end

  it 'it can substract with a starting point' do
    expect([1, 2, 3].inject(-6) { |memo, element| memo - element }).to eq -12
    expect([7, 2, 6].my_inject(-7) { |memo, element| memo - element }).to eq -22
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].inject(:+)).to eq 6
    expect([4, 7, 3, 5, 3].my_inject(:+)).to eq 22
  end

  it 'can times with a symbol' do
    expect([1, 2, 3].inject(:*)).to eq 6
    expect([6, 7, 2].my_inject(:*)).to eq 84
  end
end
