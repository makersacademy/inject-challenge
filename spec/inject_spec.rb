require 'inject'

describe Array do

  let(:array) {array = [1,2,3,4]}

  context 'You don\'t need the inject method!' do

  it 'should be able to add' do
    expect(array.not_inject {|result, element| result + element }).to eq 10
   end

  it 'should be able to subtract' do
    expect(array.not_inject {|result, element| result - element}).to eq -8
  end

  end
end


