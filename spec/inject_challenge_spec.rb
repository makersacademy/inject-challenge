require 'inject_challenge'

describe Array do

  it 'can add numbers together' do
    expect([1, 2].injekt { |sum, n| sum + n }).to eq 3
  end

end