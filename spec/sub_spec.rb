require 'array'
describe Array do 
	let (:array) {[1,2,3,4,5]}

	    add = Proc.new{|n, i| n + i}
		substract = Proc.new{|n, i| n - i}	
		multiply = Proc.new{|n, i| n * i}
	    divide = Proc.new{|n, i| n / i}

	    

	      it "it returns 15 when we concenate each element" do
	      expect(array.inject_1 &add).to eq(15)
	  end

          it "it returns -13 when we substract each element" do
	      expect(array.inject_1 &substract).to eq(-13)
	  end

	      it "it returns 120 when we multiply each element" do
	      expect(array.inject_1 &multiply).to eq(120)
	  end


	      it "it returns 0 when we divide each element " do
	      expect(array.inject_1 &divide).to eq(0)
	  end
   end