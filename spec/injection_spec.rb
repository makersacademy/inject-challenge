require 'injection'

describe Array do

  describe 'injection' do
    subject{[1,2,3]}

    it 'should take subject and block and return the value of the block ' do
      expect(subject.injection{|x,y| x + y}).to eq 6
    end

    it 'should take subject and block and return the value of the block' do
      expect(subject.injection{ |x,y| x + (2*y) }).to eq 12
    end

    it 'should take subject and block and return the value of the block' do
      expect(subject.injection{ |x,y| x + (y + 3) }).to eq 15
    end

    it 'should take subject and block and return the value of the block' do
      expect(subject.injection(2){|x,y| x + y}).to eq 8
    end

    it 'should take subject and block and return the value of the block' do
      expect(subject.injection(3){|x,y| x + y}).to eq 9
    end
  end
end