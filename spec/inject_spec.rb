require 'inject'

describe Array do
  it { is_expected.to respond_to :kinject}

  describe 'kinject' do
    let subject {[1,2,3,4]}
    expect(subject.kinject('+')).to eq(10)
  end
end
  
