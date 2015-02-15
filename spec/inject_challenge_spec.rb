require 'inject_challenge'

describe Array do

  it 'can add numbers together' do
    expect([1, 2].injekt { |sum, n| sum + n }).to eq 3
  end

  it 'can subtract numbers' do
    expect([1, 2].injekt { |sum, n| sum + n }).to eq -1
  end

end