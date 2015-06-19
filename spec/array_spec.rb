require 'array'

describe Array do
  subject {[1,2,3,4]}
  describe 'faisal_inject' do

    it 'adds' do
      expect(subject.faisal_inject{|k,v| k + v}).to eq 10
    end

    it 'adds with an argument' do
      expect(subject.faisal_inject(10){|k,v| k + v}).to eq 20
    end

    it 'adds with an argument' do
      expect(subject.faisal_inject(10){|k,v| k * v}).to eq 240
    end

    it 'takes in an addition symbol' do
      expect(subject.faisal_inject(:+)).to eq 10
    end

    it 'takes in an subtraction symbol' do
      expect(subject.faisal_inject(:-)).to eq -8
    end

    it 'takes in an division symbol' do
      expect(subject.faisal_inject(:/)).to eq 0
    end

    it 'takes in an multiplication symbol' do
      expect(subject.faisal_inject(:*)).to eq 24
    end

    it 'can take a 2 arguments' do
      expect(subject.faisal_inject(10,:+)).to eq 20
    end

    it 'can take a 2 arguments' do
      expect(subject.faisal_inject(10,:*)).to eq 240
    end

  end
end
