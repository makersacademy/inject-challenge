require 'injecct'

describe Array do
  describe 'injecct' do
    # context "basics" do
    #   test = [1,2]
    #   it "outputs an addtion of two digits" do
    #     expect(test.injecct).to eq 3
    #   end
    #
    #   it "outputs an addition of three digits" do
    #     test = [1,2,3]
    #     expect(test.injecct).to eq 6
    #   end
    # end
    context 'add a block of code' do

      it 'will execute some user entered code' do
        test = [1,2]
        expect(test.injecct{ |k,v| k + v }).to eq 3
      end

      it 'will execute some more advanced user entered code' do
        test = [1,2,3,4]
        expect(test.injecct{ |k,v| k + v }).to eq 10
      end
    end

    context 'addition, subtraction, arrays, hashes' do

      it 'will minus the numbers also' do
       test = [1,2,3,4]
       expect(test.injecct{ |k,v| k - v }).to eq -8
      end

      it 'will accept an argument that works if it is an integer' do
       test = [1,2,3,4]
       expect(test.injecct(3){|k,v| k + v }).to eq 13
      end

      it 'will accept an argument that is an array and will put things in the array' do
       test = [1,2,3,4]
       expect(test.injecct([]){|k,v| k << v }).to eq [1,2,3,4]
      end
    end
  end

end
