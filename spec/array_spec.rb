require 'array'

describe Array do
  it { is_expected.to respond_to :molliesinject }

  it 'can do simple addition' do
    array = [1, 2, 3, 4, 5, 6, 7, 8]
    expect(array.molliesinject { |tot, num| tot + num }).to eq(array.inject { |tot, num| tot + num })
  end

  it 'does not return 0 when asked to do multiplication' do
    array = [1, 2, 3, 4, 5, 6]
    expect(array.molliesinject { |tot, num| tot * num }).to eq 720
  end
end