require 'array'

describe Array do

  describe '#mick_inject' do

    it 'does accumulative addition of an array of integers' do
      array = [1,2,3,4]
      expect(array.mick_inject{ |sum, a| sum + a })
    end

  end

end