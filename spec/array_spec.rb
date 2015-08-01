require "my_inject"
describe "Array" do
  describe "my_inject" do
    array = [1,2,3,4]
    it { expect(array).to respond_to(:my_inject) }
    it "works with adding items together" do
      a = [1,2,3,4]
      expect(a.my_inject { |total, x| total + x } ).to eq 10
    end
  end
end