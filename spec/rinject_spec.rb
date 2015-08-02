require 'rinject'

describe 'Inject method:' do

  let(:arg)   { 10 }
  let(:array) {[1,2,3,4]}

  context 'Retesh Injects' do

    it 'takes an initial argument' do
      expect(array.retesh_inject(arg) { |a,b| a }).to eq array.inject(arg) { |a,b| a }
    end

    it 'defaults to first element of the collection' do
      expect(array.retesh_inject {|a,b| a }).to eq array.inject {|a,b| a }
    end

    it 'should have specific arguments passed to the block' do
      expect{ |a| [1].retesh_inject(0, &a) }.to  yield_with_args(0,1)
    end

    it 'implements inject when passed no argument' do
      expect(array.retesh_inject(0) {|a,b| a + b }).to eq array.inject(0) {|a,b| a + b }
    end

    it 'implements inject when passed an initial argument' do
      expect(array.retesh_inject(arg) {|a,b| a * b }).to eq array.inject(arg) {|a,b| a * b }
    end
  end

  end
