require 'injecty'

describe Array do
  subject(:array) { [1, 2, 3] }

  it { is_expected.to respond_to(:injecty).with(1).arguments }

  describe '#injecty' do
   # tests for the simplest thing array.inject will do
   it 'kind of adds elements in the array and returns a single value' do
     expect(array.injecty { |accumulator, iterated| accumulator + iterated }).to eq 6
   end

  end
end
