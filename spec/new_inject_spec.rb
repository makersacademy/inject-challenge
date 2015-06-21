require 'array'

describe Array do

	describe "#new_inject" do
		it "returns the only element of array" do
			
			expect( [1].new_inject{ |mem, el| el } ).to eq 1
		end

		it "sum the numbers" do
			expect( [ 1, 2 ].new_inject{ |ob, el| el + ob } ).to eq 3
		end		
		
		it "rest the numbers" do
			expect( [1,2,3].new_inject( 1 ) {|mem, el| mem - el } ).to eq -5
		end

		it "sum the numbers when mew_inject( :+ )" do
			expect( [1,2,3].new_inject( :+ ) ).to eq 6
		end

		it "rest the numbers when new_inject( :- )" do
			expect( [10,1,2,3].new_inject( :- ) ).to eq -16
		end

		it "sums the number when new_inject( 1, :+ )" do
		end


	end

end