require 'array'

describe Array do
  let(:rand_array) { (1..rand(1..10)).to_a }
  let(:plus) { proc { |x, y| x + y } }
  let(:minus) { proc { |x, y| x - y } }
  let(:times) { proc { |x, y| x * y } }
  let(:divide) { proc { |x, y| x.fdiv(y) } }
  let(:word_array) { %w(cat sheep bear) }
  let(:test) { proc { |memo, word| memo.length > word.length ? memo : word } }

  describe '#inject_alt' do
    context 'without initial value' do
      it 'should work with a plus proc' do
        expect(rand_array.inject_alt(&plus)).to eq rand_array.inject(&plus)
      end

      it 'should work with a minus proc' do
        expect(rand_array.inject_alt(&minus)).to eq rand_array.inject(&minus)
      end

      it 'should work with a plus proc' do
        expect(rand_array.inject_alt(&times)).to eq rand_array.inject(&times)
      end

      it 'should work with a plus proc' do
        expect(rand_array.inject_alt(&divide)).to eq rand_array.inject(&divide)
      end

      it 'should work with a + symbol' do
        expect(rand_array.inject_alt(&:+)).to eq rand_array.inject(:+)
      end

      it 'should work with an example from the ruby doc' do
        expect(word_array.inject_alt(&test)).to eq word_array.inject(&test)
      end
    end

    context 'with initial value' do
      it 'should work with a plus proc' do
        result = rand_array.inject_alt(1, &plus)
        expect(result).to eq rand_array.inject(1, &plus)
      end

      it 'should work with a minus proc' do
        result = rand_array.inject_alt(1, &minus)
        expect(result).to eq rand_array.inject(1, &minus)
      end

      it 'should work with a plus proc' do
        result = rand_array.inject_alt(1, &times)
        expect(result).to eq rand_array.inject(1, &times)
      end

      it 'should work with a plus proc' do
        result = rand_array.inject_alt(1, &divide)
        expect(result).to eq rand_array.inject(1, &divide)
      end

      it 'should work with a + symbol' do
        expect(rand_array.inject_alt(1, &:+)).to eq rand_array.inject(1, :+)
      end
    end
  end

  describe '#inject_alt2' do
    context 'without initial value' do
      it 'should work with a plus proc' do
        expect(rand_array.inject_alt2(&plus)).to eq rand_array.inject(&plus)
      end

      it 'should work with a minus proc' do
        expect(rand_array.inject_alt2(&minus)).to eq rand_array.inject(&minus)
      end

      it 'should work with a plus proc' do
        expect(rand_array.inject_alt2(&times)).to eq rand_array.inject(&times)
      end

      it 'should work with a plus proc' do
        expect(rand_array.inject_alt2(&divide)).to eq rand_array.inject(&divide)
      end

      it 'should work with a + symbol' do
        expect(rand_array.inject_alt2(&:+)).to eq rand_array.inject(:+)
      end

      it 'should work with an example from the ruby doc' do
        expect(word_array.inject_alt2(&test)).to eq word_array.inject(&test)
      end
    end

    context 'with initial value' do
      it 'should work with a plus proc' do
        result = rand_array.inject_alt2(1, &plus)
        expect(result).to eq rand_array.inject(1, &plus)
      end

      it 'should work with a minus proc' do
        result = rand_array.inject_alt2(1, &minus)
        expect(result).to eq rand_array.inject(1, &minus)
      end

      it 'should work with a plus proc' do
        result = rand_array.inject_alt2(1, &times)
        expect(result).to eq rand_array.inject(1, &times)
      end

      it 'should work with a plus proc' do
        result = rand_array.inject_alt2(1, &divide)
        expect(result).to eq rand_array.inject(1, &divide)
      end

      it 'should work with a + symbol' do
        expect(rand_array.inject_alt2(1, &:+)).to eq rand_array.inject(1, :+)
      end
    end
  end
end


