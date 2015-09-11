require 'array'

describe Array do

  describe '#mick_inject' do

    it 'does accumulative addition of an array of integers' do
      array = [1,2,3,4]
      expect(array.mick_inject{ |sum, a| sum + a }).to eq 10
    end

    it 'does accumulative multiplication of integers with inital value given' do
      array = [2,4,6,8]
      expect(array.mick_inject(3){ |tot, a| tot * a }).to eq 1152
    end

    it 'works for combining array of strings' do
      array = ["Friday", "nights", "were", "made", "for", "ruby!"]
      expect(array.mick_inject{ |str, a| str + " #{a}" }).to eq "Friday nights were made for ruby!"

    end

  end

end