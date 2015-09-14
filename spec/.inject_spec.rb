describe Array do

  block = proc { |memo, obj| memo += obj }
  blockm = proc { |memo, obj| memo *= obj }
  blockz = proc { zzz }

  context 'when injected with three arguments' do
    it 'raises an argument error' do
      expect{[].inject(0, 1, :+)}.to raise_error ArgumentError
    end
  end

  context 'when injected with no block' do
    context 'and no arguments' do
      it 'returns nil with []' do
        expect([].inject).to eq nil
      end
      it 'returns :dummy with [:dummy]' do
        expect([:dummy].inject).to eq :dummy
      end
      it 'raises a local jump error with [4,3,2,1]' do
        expect{[4,3,2,1].inject}.to raise_error LocalJumpError
      end
    end
    context "and one argument that isn't a symbol" do
      it 'raises a type error' do
        expect{[].inject(999)}.to raise_error TypeError
      end
    end
    context "and two arguments, 5 and a non-symbol" do
      it 'raises a type error' do
        expect{[].inject(5, 999)}.to raise_error TypeError
      end
    end
    context 'and one argument that is an undefined symbol' do
      it 'returns nil for []' do
        expect([].inject(:zzz)).to eq nil
      end
      it 'returns :dummy for [:dummy]' do
        expect([:dummy].inject(:zzz)).to eq :dummy
      end
      it 'raises a no method error for [4,3,2,1]' do
        expect{[4,3,2,1].inject(:zzz)}.to raise_error NoMethodError
      end
    end
    context 'and two arguments, 5 and an undefined symbol' do
      it 'returns 5 for []' do
        expect([].inject(5, :zzz)).to eq 5
      end
      it 'raises a no method error for [321]' do
        expect{[321].inject(5, :zzz)}.to raise_error NoMethodError
      end
    end
    context 'and one argument, :+' do
      it 'returns nil for []' do
        expect([].inject(:+)).to eq nil
      end
      it 'returns :dummy for [:dummy]' do
        expect([:dummy].inject(:+)).to eq :dummy
      end
      it 'returns 10 for [4,3,2,1]' do
        expect([4,3,2,1].inject(:+)).to eq 10
      end
      it "returns 'dog' for ['d','o','g']" do
        expect(['d','o','g'].inject(:+)).to eq 'dog'
      end
    end
    context 'and one argument, :*' do
      it 'returns 24 for [4,3,2,1]' do
        expect([4,3,2,1].inject(:*)).to eq 24
      end
      it "raises a type error for ['d','o','g']" do
        expect{['d','o','g'].inject(:*)}.to raise_error TypeError
      end
    end
    context 'and two arguments, 5 and :+' do
      it 'returns 5 for []' do
        expect([].inject(5, :+)).to eq 5
      end
      it 'returns 326 for [321]' do
        expect([321].inject(5, :+)).to eq 326
      end
      it 'returns 15 for [4,3,2,1]' do
        expect([4,3,2,1].inject(5, :+)).to eq 15
      end
      it "raises a type error for ['d','o','g']" do
        expect{['d','o','g'].inject(5, :+)}.to raise_error TypeError
      end
    end
  end

  context 'when injected with a block' do
    context 'and two arguments, 5 and a non-symbol' do
      it 'raises a type error' do
        expect{[].inject(5, 999, &block)}.to raise_error TypeError
      end
    end
    context 'and two arguments, 5 and an undefined symbol' do
      it 'returns 5 for []' do
        expect([].inject(5, :zzz, &block)).to eq 5
      end
      it 'raises a no method error for [321]' do
        expect{[321].inject(5, :zzz, &block)}.to raise_error NoMethodError
      end
    end
    context 'and two arguments, 5 and :*' do
      it 'returns 5 for []' do
        expect([].inject(5, :*, &block)).to eq 5
      end
      it 'returns 1605 for [321]' do
        expect([321].inject(5, :*, &block)).to eq 1605
      end
      it 'returns 120 for [4,3,2,1]' do
        expect([4,3,2,1].inject(5, :*, &block)).to eq 120
      end
      it "raises a type error for ['d','o','g']" do
        expect{['d','o','g'].inject(5, :*, &block)}.to raise_error TypeError
      end
    end
    context "and two arguments, 'X' and :*" do
      it "returns 'XXXXXX' for [3,2,1]" do
        expect([3,2,1].inject('X', :*, &block)).to eq 'XXXXXX'
      end
      it "raises a type error for ['d','o','g']" do
        expect{['d','o','g'].inject('X', :*, &block)}.to raise_error TypeError
      end
    end
  end

  context 'when injected with a block' do
    context 'that uses undefined methods' do
      context 'with no arguments' do
        it 'returns nil for []' do
          expect([].inject(&blockz)).to eq nil
        end
        it 'returns :dummy for [:dummy]' do
          expect([:dummy].inject(&blockz)).to eq :dummy
        end
        it 'raises a no method error for [4,3,2,1]' do
          expect{[4,3,2,1].inject(&blockz)}.to raise_error NameError
        end
      end
      context 'with one argument 5' do
        it 'returns nil for []' do
          expect([].inject(5, &blockz)).to eq 5
        end
        it 'raises a name error for [99]' do
          expect{[99].inject(5, &blockz)}.to raise_error NameError
        end
      end
    end
    context 'that does addition/concatenation' do
      context 'with no arguments' do
        it 'returns nil for []' do
          expect([].inject(&block)).to eq nil
        end
        it 'returns :dummy for [:dummy]' do
          expect([:dummy].inject(&block)).to eq :dummy
        end
        it 'returns 10 for [4,3,2,1]' do
          expect([4,3,2,1].inject(&block)).to eq 10
        end
        it "returns 'dog' for ['d','o','g']" do
          expect(['d','o','g'].inject(&block)).to eq 'dog'
        end
      end
      context 'with one argument 5' do
        it 'returns 5 for []' do
          expect([].inject(5, &block)).to eq 5
        end
        it 'returns 104 for [99]' do
          expect([99].inject(5, &block)).to eq 104
        end
        it 'returns 15 for [4,3,2,1]' do
          expect([4,3,2,1].inject(5, &block)).to eq 15
        end
        it "raises a type error for ['d','o','g']" do
          expect{['d','o','g'].inject(5, &block)}.to raise_error TypeError
        end
      end
      context "with one argument 'woof'" do
        it "returns 'woofdog' for ['d','o','g']" do
          expect(['d','o','g'].inject('woof', &block)).to eq 'woofdog'
        end
      end
    end
    context 'that does multiplication' do
      it "raises type error for ['d','o','g']" do
        expect{['d','o','g'].inject(&blockm)}.to raise_error{TypeError}
      end
    end
  end

end
