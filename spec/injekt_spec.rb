require 'injekt'

describe Array do

  context 'when injekted with no block' do

    context 'and no arguments' do
      xit 'returns nil for []' do
        expect([].injekt).to eq nil
      end
      xit 'returns 99 for [99]' do
        expect([99].injekt).to eq 99
      end
      xit 'raises local jump error for [4,3,2,1]' do
        expect{[4,3,2,1].injekt(:+)}.to raise_error{LocalJumpError}
      end
    end

    context 'and symbol :+' do
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

    context 'and symbol :*' do
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

    context 'and symbol :z' do
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

    context 'and argument nil' do
      it 'raises type error for []' do
        expect{[].injekt(nil)}.to raise_error{TypeError}
      end
    end

  end

  context 'when injekted with a block' do
    context 'that does +' do
      block = proc { |memo, obj| memo = memo + obj }
      context 'with no arguments' do
        it 'returns nil for []' do
          expect([].injekt(&block)).to eq nil
        end
        it 'returns 99 for [99]' do
          expect([99].injekt(&block)).to eq 99
        end
        it 'returns 10 for [4,3,2,1]' do
          expect([4,3,2,1].injekt(&block)).to eq 10
        end
        it "returns 'dog' for ['d','o','g']" do
          expect(['d','o','g'].injekt(&block)).to eq 'dog'
        end
      end
    end
  end


end
