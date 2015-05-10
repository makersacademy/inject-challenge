require 'inject_remake'

describe Array do

  it 'adds up an array of numbers' do
  expect([1,2,3,4].inject_remake(){|total, element| total + element}).to eq [1,2,3,4].inject{|total, element| total + element}
  end

  it 'adds up an array of numbers with a given starting point' do
  expect([1,2,3,4].inject_remake(10){|total, element| total + element}).to eq [1,2,3,4].inject(10){|total, element| total + element}
  end

  it 'can multiply an array of numbers' do
  expect([1,2,3,4].inject_remake(){|total, element| total * element}).to eq [1,2,3,4].inject{|total, element| total * element}
  end

  it 'can multiple an array of numbers with a given starting point' do
  expect([1,2,3,4].inject_remake(10){|total, element| total * element}).to eq [1,2,3,4].inject(10){|total, element| total * element}
  end

  it 'can subtract an array of numbers' do
  expect([1,2,3,4].inject_remake(){|total, element| total - element}).to eq [1,2,3,4].inject{|total, element| total - element}
  end

  it 'can subtract an array of numbers with a given starting point' do
  expect([1,2,3,4].inject_remake(10){|total, element| total - element}).to eq [1,2,3,4].inject(10){|total, element| total - element}
  end

end