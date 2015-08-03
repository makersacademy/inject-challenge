require "my_inject"
describe "Features" do 
  describe "#my_inject" do
    it "works with adding numbers together" do
      a = [1,2,3,4]
      expect(a.my_inject { |total, x| total + x } ).to eq 10
    end
    it "works with adding numbers together with an argument" do
      a = [1,2,3,4]
      expect(a.my_inject(2) { |total, x| total + x } ).to eq 12
    end
    it "works with other integer methods" do
      a = [1,2,3,4,5,6,7,8,9,10]
      expect( a.my_inject(1) { |total, x| x.even? ? total*x : total } ).to eq 3840
    end
    it "works with adding strings together" do
      a = ["a","b","c","d"]
      expect(a.my_inject { |total, x| total + x } ).to eq "abcd"
    end
    it "works with adding strings together with an argument" do
      a = ["a","b","c","d"]
      expect(a.my_inject(1) { |total, x| total + x } ).to eq "1abcd"
    end
    it "raises error if the given array is not compatible" do 
      a = [1,2,"A",["B",2]]
      expect{ a.my_inject(1) { |total, x| total + x } }.to raise_error "Array not usable"
    end
    it "works with array inputs" do
      a = [[1,2],[3],[4,5,6]]
      expect(a.my_inject([0]) { |total, x| x.each { |y| total << y } } ).to eq [4,5,6]
    end
  end
end