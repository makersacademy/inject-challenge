require 'my_inject'

describe Array do
  describe '#my_inject with numbers' do
    subject = [1,2,3]
    initial_val = 5
    it 'will accumulate on addition' do
      expect(subject.my_inject {|memo, x| memo + x}).to eq 6
    end
    it 'will accumulate on multiplication' do
      expect(subject.my_inject {|memo, x| memo * x}).to eq 6
    end
    it 'will accumulate on subtraction' do
      expect(subject.my_inject {|memo, x| memo - x}).to eq -4
    end
    it 'will accumulate on division' do
      answer = [50,2,3].my_inject {|memo, x| memo / x }
      expect(answer.round(2)).to eq 8.33
    end
    it 'will accumulate on addtion with an inital value' do
      expect(subject.my_inject(initial_val) {|memo, x| memo + x}).to eq 11
    end
  end

  describe '#my_inject with strings' do
    it 'will accumulate on addition' do
      expect(['a','b','c'].my_inject {|memo, x| memo + x}).to eq'abc'
    end
    it 'will accumulate on addition with an inital value' do
      expect(['a','b','c'].my_inject('b') {|memo, x| memo + x}).to eq'babc'
    end
  end
end
