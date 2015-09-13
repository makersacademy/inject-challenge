describe Array do

  context 'when injected with no block' do

    context 'and no arguments' do
      xit 'returns nil for []' do
        expect([].inject).to eq nil
      end
      xit 'returns 99 for [99]' do
        expect([99].inject).to eq 99
      end
      xit 'raises local jump error for [4,3,2,1]' do
        expect{[4,3,2,1].inject(:+)}.to raise_error{LocalJumpError}
      end
    end

    context 'and symbol :+' do
      it 'returns nil for []' do
        expect([].inject(:+)).to eq nil
      end
      it 'returns 99 for [99]' do
        expect([99].inject(:+)).to eq 99
      end
      it 'returns 10 for [4,3,2,1]' do
        expect([4,3,2,1].inject(:+)).to eq 10
      end
      it "returns 'dog' for ['d','o','g']" do
        expect(['d','o','g'].inject(:+)).to eq 'dog'
      end
    end

    context 'and symbol :*' do
      it 'returns nil for []' do
        expect([].inject(:*)).to eq nil
      end
      it 'returns 99 for [99]' do
        expect([99].inject(:*)).to eq 99
      end
      it 'returns 24 for [4,3,2,1]' do
        expect([4,3,2,1].inject(:*)).to eq 24
      end
      it "raises type error for ['d','o','g']" do
        expect{['d','o','g'].inject(:*)}.to raise_error{TypeError}
      end
    end

    context 'and symbol :z' do
      it 'returns nil for []' do
        expect([].inject(:z)).to eq nil
      end
      it 'returns 99 for [99]' do
        expect([99].inject(:z)).to eq 99
      end
      it 'raises no method error for [4,3,2,1]' do
        expect{[4,3,2,1].inject(:z)}.to raise_error{NoMethodError}
      end
    end

    context 'and argument nil' do
      it 'raises type error for []' do
        expect{[].inject(nil)}.to raise_error{TypeError}
      end
    end

  end

end
