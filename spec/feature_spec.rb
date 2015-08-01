require "my_inject"
describe "Features" do 
  describe "#my_inject" do
    it "works with adding numbers together" do
      a = [1,2,3,4]
      expect(a.my_inject { |total, x| total + x } ).to eq 10
    end
    it "works with adding strings together" do
      a = ["a","b","c","d"]
      expect(a.my_inject { |total, x| total + x } ).to eq "abcd"
    end
  end
end