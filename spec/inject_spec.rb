require 'inject'

describe Array do 
	it 'Sum some numbers' do
		expect([1,2,3,4,5].sebastien_injection(&:+)).to eq(15)
	end
	
	it 'Can find the shortest word' do
      		shortest_word = ["lion", "dog", "computer" "banana"].sebastien_injection do |a, w|
        	a.length < w.length ? a : w
        end
      expect(shortest_word).to eq("dog")
    end
end
