require 'array'

describe Array do

  it 'can add' do
    expect([1,2,3].new_inject {|memo, num| memo + num }).to eq 6
  end

  it 'can add with a starting point' do
    expect([1,2,3].new_inject(2) {|memo, num| memo + num }).to eq 8
  end

  it 'can times' do
    expect([1,2,3].new_inject {|memo, num| memo * num }).to eq 6
  end

  it 'can times with a starting point' do
    expect([1,2,3].new_inject(2) {|memo, num| memo * num }).to eq 12
  end
end