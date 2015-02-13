require 'inject'

describe Array do 

		
		it 'sum numbers' do
			expect([1,2,3,4,5].inject{|a,b| a + b}).to eq 15
			expect([1,2,3,4,5].sebastien_injection{|a,b| a + b}).to eq 15
		end

		# it 'should' do
		# 	expect(["emperor", "joshua", "abraham", "norton"].inject()).to eq "Emperor Joshua Abraham Norton"
		# end

end