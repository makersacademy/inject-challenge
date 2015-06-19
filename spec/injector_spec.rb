require 'injector'

describe Array do

  it 'returns 3 when passed { |sum, n| } on [1, 2]' do
    expect([1, 2].injector { |sum, n| sum + n }).to eq 3
  end

end