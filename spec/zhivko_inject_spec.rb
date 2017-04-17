require 'zhivko_inject'

describe Array do
  describe 'zhivko_inject' do

    let(:array) { [10,2,5] }
    let(:array2) { ['Hello', ' World', '!'] }

    context 'when a block is passed without a parameter' do

      it 'can add numbers' do
        expect(array.zhivko_inject { |result, num| result += num }).to eq 17
      end

      it 'can subtract numbers' do
        expect(array.zhivko_inject { |result, num| result - num }).to eq 3
      end

      it 'can multiple numbers' do
        expect(array.zhivko_inject { |result, num| result * num} ).to eq 100
      end

      it 'can divide numbers' do
        expect(array.zhivko_inject { |result, num| result / num} ).to eq 1
      end
    end

    context 'when a block is passed with a parameter' do

      it 'can add numbers' do
        expect(array.zhivko_inject(3) { |result, num| result += num } ).to eq 20
      end

      it 'can divide numbers' do
        expect(array.zhivko_inject(1000) { |result, num| result / num } ).to eq 10
      end
    end

    context 'when a string is passed without a parameter' do

      it 'can append' do
        expect(array2.zhivko_inject { |result, string| result << string } ).to eq 'Hello World!'
      end

      it 'can concatenate' do
        expect(array2.zhivko_inject { |result, string| result.concat(string) } ).to eq 'Hello World!'
      end
    end

    context 'when a string is passed with a parameter' do
      it 'can append' do
        expect(array2.zhivko_inject("Welcome ") { |result, string| result << string } ).to eq 'Welcome Hello World!'
      end
    end

    context 'when a symbol is passed' do
      it 'can add' do
        expect(array.zhivko_inject(:+)).to eq 17
      end

      it 'can multiple' do
        expect(array.zhivko_inject(:*)).to eq 100
      end

      it 'can append to a string' do
        expect(array2.zhivko_inject(:<<)).to eq 'Hello World!'
      end
    end
  end
end
