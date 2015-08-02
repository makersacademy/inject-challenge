require "my_inject"
describe "Array" do
  describe "#my_inject" do
    array = [1,2,3,4]
    it { expect(array).to respond_to(:my_inject) }
    it "works with adding items together" do
      a = [1,2,3,4]
      expect(a.my_inject { |total, x| total + x } ).to eq 10
    end
    it "works with adding strings together" do
      a = ["a","b","c","d"]
      expect(a.my_inject { |total, x| total + x } ).to eq "abcd"
    end
    it "raises error if the given array is not compatible" do 
      a = [1,2,"A",["B",2]]
      expect{a.my_inject(1) { |total, x| total + x } }.to raise_error "Array not usable"
    end
    it "works with array inputs" do
      a = [[1,2],[3],[4,5,6]]
      expect(a.my_inject { |total, x| x.each { |y| total << y } } ).to eq [4,5,6]
    end
  end
end