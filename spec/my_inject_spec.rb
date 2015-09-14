require 'my_inject'

describe MyArray do

  describe "#my_inject" do

    it "works with a block given" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject(1) {|a,b| a+b}).to eq(16)
    end

    it "works when initial argument is an array" do
      subject.push(1,2,3,4,5,6)
      expect(subject.my_inject([]) do |result, element|
        result << element.to_s if element.even?
        result
      end).to eq(["2", "4", "6"])
    end

    it "works when initial argument is a hash" do
      subject.push([:first_name, 'Shane'], [:last_name, 'Harvie'])
      expect(subject.my_inject({}) do |result, element|
        result[element.first.to_s] = element.last.downcase
        result
      end).to eq("first_name"=>"shane", "last_name"=>"harvie")
    end

    it "by default the first element of collection is used as the initial" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject {|a,b| a+b}).to eq(15)
    end

    it "works with a symbol (when no block is provided)" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject(1, :+)).to eq(16)
    end

    it "works with a symbol if initial value was not specified" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject(:+)).to eq(15)
    end

    it "works when initial is a symbol and block is provided" do
      subject.push(:a)
      expect(subject.my_inject(:a) {|init, el| init==el}).to eq(true)
    end

    it "raises an error if no block or symbol provided" do
      subject.push(1,2,3,4,5)
      expect{subject.my_inject(6)}.to raise_error "ERROR!"
    end

    it "does not change the initial array" do
      subject.push(1,2,3,4,5)
      subject.my_inject {|a,b| a+b}
      expect(subject).to eq([1,2,3,4,5])
    end

  end

  describe "#my_inject_rec" do

    it "works with a block given" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject_rec(1) {|a,b| a+b}).to eq(16)
    end

    it "works when initial argument is an array" do
      subject.push(1,2,3,4,5,6)
      expect(subject.my_inject_rec([]) do |result, element|
        result << element.to_s if element.even?
        result
      end).to eq(["2", "4", "6"])
    end

    it "works when initial argument is a hash" do
      subject.push([:first_name, 'Shane'], [:last_name, 'Harvie'])
      expect(subject.my_inject_rec({}) do |result, element|
        result[element.first.to_s] = element.last.downcase
        result
      end).to eq("first_name"=>"shane", "last_name"=>"harvie")
    end

    it "by default the first element of collection is used as the initial" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject_rec {|a,b| a+b}).to eq(15)
    end

    it "works with a symbol (when no block is provided)" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject_rec(1, :+)).to eq(16)
    end

    it "works with a symbol if initial value was not specified" do
      subject.push(1,2,3,4,5)
      expect(subject.my_inject_rec(:+)).to eq(15)
    end

    it "works when initial is a symbol and block is provided" do
      subject.push(:a)
      expect(subject.my_inject_rec(:a) {|init, el| init==el}).to eq(true)
    end

    it "raises an error if no block or symbol provided" do
      subject.push(1,2,3,4,5)
      expect{subject.my_inject_rec(6)}.to raise_error "ERROR!"
    end

    it "does not change the initial array" do
      subject.push(1,2,3,4,5)
      subject.my_inject_rec {|a,b| a+b}
      expect(subject).to eq([1,2,3,4,5])
    end

  end

end