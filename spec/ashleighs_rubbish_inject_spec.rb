require 'ashleighs_rubbish_inject'

describe Array do
  it 'to receive array as input and give output' do
    expect(subject).to respond_to(:inject_method)
    expect(subject.inject_method).not_to eq nil
  end
  	
end