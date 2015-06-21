require 'inject'

describe Array do 

 it 'must respond to jonject' do 
  expect(subject).to respond_to(:jonject)
end

  it 'must add up all the values of an array' do 
  array = [2,3,4,5]
  expect(array.jonject { |sum,n| sum + n }).to eq 14
end 

it 'must return the product of an array ' do 
  array = [2,3,4,5]
  expect(array.jonject { |product,n| product * n }).to eq 120
end
end
