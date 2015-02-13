require 'inject'

describe Array do 

		
		it 'sum numbers' do
			expect([1,2,3,4,5].sebastien_injection(&:*)).to eq(120)
		end
end