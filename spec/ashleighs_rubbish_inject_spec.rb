require 'ashleighs_rubbish_inject'

describe Array do

  it 'to respond to the new inject method' do
    expect(subject).to respond_to(:inject_method)
  end

  it 'to give an output' do
    expect(subject.inject_method(:code)).not_to eq nil
  end

  it 'to receive two arguments' do
  	expect(subject).to respond_to(:inject_method).with(1).arguments
  end

# how to pass operator to our method? Googlings
# => need to write operator as a symbol like ":+"?
# not doing this now, too complicated for my tiny brain :P
# decided to persevere with using block

# need to figure out if there is a test for this?
# does inject method only accept blocks?
# ... yesss it does. Can I test for that?
  xit 'to receive block as argument' do
  end

  xit 'to receive number as an argument and output number or boolean' do
  end

  xit 'to receive string as an argument and output string' do
  end

  context 'to return the same values as inject method:' do
    xit 'array = [1,2,3,4], input = 0 and operator = \'+\', return true' do
      array = [1,2,3,4]
	  new_method = array.inject_method(0){|start, n| start + n}
	  smelly_old_method = array.inject(0){|start, n| start + n}
	  expect(new_method).to eq smelly_old_method
	end
end
  	
end