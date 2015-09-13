require 'my_inject'

describe MyArray do

  describe "#my_inject" do

    it "Combines all elements of my_array by applying a binary operation, specified by a block " do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject(1) {|a,b| a+b}).to eq(16)
    end

    it "works when initial argument is an array" do
      subject.push(1,2,3,4,5,6)
      expect(subject.my_inject([]) do |result, element|
        result << element.to_s if element % 2 == 0
        result
      end).to eq(["2", "4", "6"])
    end

    it "works when initial argument is a hash" do
      subject.push([:first_name, 'Shane'], [:last_name, 'Harvie'])
      expect(subject.my_inject({}) do |result, element|
        result[element.first.to_s] = element.last.downcase
        result
      end).to eq({"first_name"=>"shane", "last_name"=>"harvie"})
    end

    it "If initial value was not specified, the first element of collection is used as the initial" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject {|a,b| a+b}).to eq(15)
    end

    it "works with a symbol (when no block is provided)" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject(1, :+)).to eq(16)
    end

    it "works with a symbol if initial value was not specified (when no block is provided)" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject(:+)).to eq(15)
    end

    it "works when initial is a symbol and block is provided" do
      subject.push(:a)
      expect(subject.my_inject(:a) {|init, el| init==el}).to eq(true)
    end

    it "raises an error if no block or symbol provided" do
      subject.push(1,2,3,4,5)
      expect{subject.my_inject(6)}.to raise_error "No block or symbol given, or block and sym given, or smth esle is wrong!"
    end

  end

end