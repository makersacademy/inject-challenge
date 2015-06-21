require 'array'

describe Array do 

  context 'inject method should' do
   it 'work with addition when only passed a block' do 
     expect([1,2,3,4,5].michael_inject{|x,y| x + y}).to eq 15
   end

   it 'work with only a symbol (division)' do
    expect([10,2,2].michael_inject(:/)).to eq 2
   end

   it 'work with only a symbol (subtraction)' do
    expect([3,4,5].michael_inject(:-)).to eq -6
   end

   it 'work with only a symbol (multiplication' do
    expect([6,7,8].michael_inject(:*)).to eq 336
   end

   it 'work with only a symbol (addition)' do
    expect([10,2,2].michael_inject(:+)).to eq 14
   end

 end

end