require 'inject'

describe Array do

  it 'can add' do
    expect([1,2,3].my_inject {|memo, element| memo + element}).to eq(6)
  end

  it 'can times' do
    expect([1,2,3].my_inject {|memo, element| memo * element}).to eq(6)
  end

  it 'can add with starting point' do
    expect([1,2,3].my_inject(100) {|memo, element| memo + element}).to eq(106)
  end

  it 'can times with starting point' do
    expect([1,2,3].my_inject(100) {|memo, element| memo * element}).to eq(600)
  end

  it 'can add with a symbol' do
    expect([1,2,3].my_inject(:+)).to eq(6)
  end

  it 'can add with a symbol and a starting point' do
    expect([1,2,3].my_inject(10,:+)).to eq(16)
  end


end
