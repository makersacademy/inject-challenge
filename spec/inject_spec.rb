require 'inject.rb'

describe Array do
  add = Proc.new{ |x,y| x + y }
  subtract = Proc.new { |acc, elem| acc - elem }
  multiply = Proc.new{ |x,y| x * y }
  divide = Proc.new{ |x,y| x / y }
  longest = Proc.new{ |x,y| x.length > y.length ? x : y}
  
  it 'can add the sum of array' do
    expect([1,2,3,4].my_inject(&add)).to eq(10)
  end
  it 'can add the sum of array from starting point' do
    expect([1,2,3,4].my_inject(10, &add)).to eq(20)
  end
  it 'can subtract arrays' do
    expect([1,2,3,4].my_inject(&subtract)).to eq(-8)
  end
  it 'can subtract arrays from a starting point' do
    expect([1,2,3,4].my_inject(10, &subtract)).to eq(0)
  end
  it 'can multiply arrays' do
    expect([1,2,3,4].my_inject(&multiply)).to eq(24)
  end
  it 'can multiply arrays from a starting point' do
    expect([1,2,3,4].my_inject(10, &multiply)).to eq(240)
  end
  it 'can divide arrays' do
    expect([1,2,3,4].my_inject(&divide)).to eq(0)
  end
  it 'can divide arrays from a starting point' do
    expect([1,2,3,4].my_inject(100, &divide)).to eq(4)
  end
  it 'can compare sizes of objects' do
    expect(["Hello","What"].my_inject(&longest)).to eq("Hello")
  end
end
