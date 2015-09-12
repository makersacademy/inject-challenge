require 'new_inject'

describe Array do

  array1 = [1,2,3,5]
  array2 = [['hello','world'],['atom','good'],['sublime','bad']]

  describe "#new_inject" do
    it {expect(subject).to respond_to(:new_inject).with(1).argument}

    it 'produce an array of squares of an array of numbers' do
      result = array1.new_inject([]) do |obj, ele|
        obj << ele * ele
      end
      norm_inj_res = array1.inject([]) do |obj, ele|
        obj << ele * ele
      end
      expect(result).to eq(norm_inj_res)
    end

    it 'sums an array of integers when passed an argument of 0' do
      result = array1.new_inject(0) {|obj, ele| obj + ele}
      norm_inj_res = array1.inject(0) {|obj, ele| obj + ele}
      expect(result).to eq(norm_inj_res)
    end

    it 'sums an array of integers when passed no argument' do
      result = array1.new_inject() {|obj, ele| obj + ele}
      norm_inj_res = array1.inject(0) {|obj, ele| obj + ele}
      expect(result).to eq(norm_inj_res)
    end

    it 'sums an array of integers when passed no argument and does not change
      the original array' do
      array1_original = array1.dup
      result = array1.new_inject() {|obj, ele| obj + ele}
      expect(array1).to eq(array1_original)
    end

    it 'can be applied to an array of array of pairs to return a hash of key
      value pairs in the same way ruby inject does' do
      result = array2.new_inject({}) do |hash, ele|
        hash[ele.first] = ele.last
        hash
      end
      norm_inj_res = array2.inject({}) do |hash, ele|
        hash[ele.first] = ele.last
        hash
      end
      expect(result).to eq(norm_inj_res)
    end
  end

  describe "#recursion_inject" do
    it {expect(subject).to respond_to(:recursion_inject).with(1).argument}

    it 'produce an array of squares of an array of numbers' do
      result = array1.recursion_inject([]) do |obj, ele|
        obj << ele * ele
      end
      norm_inj_res = array1.inject([]) do |obj, ele|
        obj << ele * ele
      end
      expect(result).to eq(norm_inj_res)
    end

    it 'sums an array of integers when passed an argument of 0' do
      result = array1.recursion_inject(0) {|obj, ele| obj + ele}
      norm_inj_res = array1.inject(0) {|obj, ele| obj + ele}
      expect(result).to eq(norm_inj_res)
    end

    it 'sums an array of integers and does not change the original array' do
      array1_original = array1.dup
      result = array1.recursion_inject(0) {|obj, ele| obj + ele}
      expect(array1).to eq(array1_original)
    end

    it 'can be applied to an array of array of pairs to return a hash of key
      value pairs in the same way ruby inject does' do
      result = array2.recursion_inject({}) do |hash, ele|
        hash[ele.first] = ele.last
        hash
      end
      norm_inj_res = array2.inject({}) do |hash, ele|
        hash[ele.first] = ele.last
        hash
      end
      expect(result).to eq(norm_inj_res)
    end
  end

end
