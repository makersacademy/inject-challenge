require 'array'

describe Array do 

  context 'inject method should' do
   it 'work with addition when only passed a block' do 
     expect([1,2,3,4,5].michael_inject{|x,y| x + y}).to eq 15
   end

 end

end