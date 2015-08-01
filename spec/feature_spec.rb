require "my_inject"
describe "Features" do 
  describe "#my_inject" do
    it "my inject works" do
      a = [1,2,3,4]
      expect(a.my_inject { |total, x| total + x } ).to eq 10
    end
  end
end