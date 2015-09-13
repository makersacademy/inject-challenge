require 'injekt'

describe Array do

  it {is_expected.to respond_to(:injekt).with(1).argument}

  context 'when called with :+' do
    it 'returns nil for []' do
      expect([].injekt(:+)).to eq nil
    end
    it 'returns 99 for [99]' do
      expect([99].injekt(:+)).to eq 99
    end
    it 'returns 10 for [4,3,2,1]' do
      expect([4,3,2,1].injekt(:+)).to eq 10
    end
    it "returns 'dog' for ['d','o','g']" do
      expect(['d','o','g'].injekt(:+)).to eq 'dog'
    end
  end

  context 'when called with :*' do
    it 'returns nil for []' do
      expect([].injekt(:*)).to eq nil
    end
    it 'returns 99 for [99]' do
      expect([99].injekt(:*)).to eq 99
    end
    it 'returns 24 for [4,3,2,1]' do
      expect([4,3,2,1].injekt(:*)).to eq 24
    end
    it "raises type error for ['d','o','g']" do
      expect{['d','o','g'].injekt(:*)}.to raise_error{TypeError}
    end
  end

  context 'when called with :z' do
    it 'returns nil for []' do
      expect([].injekt(:z)).to eq nil
    end
    it 'returns 99 for [99]' do
      expect([99].injekt(:z)).to eq 99
    end
    it 'raises no method error for [4,3,2,1]' do
      expect{[4,3,2,1].injekt(:z)}.to raise_error{NoMethodError}
    end
  end

  context 'when called with nil' do
    it 'raises type error for []' do
      expect{[].injekt(nil)}.to raise_error{TypeError}
    end
  end

  

end
