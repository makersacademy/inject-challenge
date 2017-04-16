require 'ashleighs_rubbish_inject'

describe Array do

  it 'to respond to the new inject method' do
    expect(subject).to respond_to(:inject_method)
  end

  it 'to give an output' do
    expect(subject.inject_method(:code)).not_to eq nil
  end

  it 'to receive one argument' do
  	expect(subject).to respond_to(:inject_method).with(1).arguments
  end

context 'to return the same values as inject method:' do
  array = [1,2,3,4]
  it 'array = [1,2,3,4], input = 0 and operator = \'+\', return true' do
	new_method = array.inject_method(0){|start, n| start + n}
	smelly_old_method = array.inject(0){|start, n| start + n}
	expect(new_method).to eq smelly_old_method
  end

  it 'array = [1,2,3,4], input = 1 and operator = \'*\', return true' do
	new_method = array.inject_method(1){|start, n| start * n}
	smelly_old_method = array.inject(1){|start, n| start * n}
	expect(new_method).to eq smelly_old_method
  end

  it 'array = [1,2,3,4], input = 0 and operator = \'-\', return true' do
	new_method = array.inject_method(0){|start, n| start - n}
	smelly_old_method = array.inject(0){|start, n| start - n}
	expect(new_method).to eq smelly_old_method
  end

  it 'array = [1,2,3,4], input = 1 and operator = \'/\', return true' do
	new_method = array.inject_method(1){|start, n| start / n}
	smelly_old_method = array.inject(1){|start, n| start / n}
	expect(new_method).to eq smelly_old_method
  end

  it 'array = [1,2,3,4], input = 0 and operator = \'||\', return true' do
	new_method = array.inject_method(0){|start, n| start || n}
	smelly_old_method = array.inject(0){|start, n| start || n}
	expect(new_method).to eq smelly_old_method
  end

  it 'array = [1,2,3,4], input = 0 and operator = \'&&\', return true' do
	new_method = array.inject_method(0){|start, n| start && n}
	smelly_old_method = array.inject(0){|start, n| start && n}
	expect(new_method).to eq smelly_old_method
  end

  it 'array = ["let\'s ", "be ", "friends!"], input = "add me " and operator = \'+\', return true' do
    array = ["let\'s ", "be ", "friends!"]
	new_method = array.inject_method("add me "){|start, n| start + n}
	smelly_old_method = array.inject("add me "){|start, n| start + n}
	expect(new_method).to eq smelly_old_method
  end
end

end