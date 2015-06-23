require 'better_inject'

describe Array do
  it 'can add numbers' do
    expect([1, 2, 3].jack_inject(0) { |k, v| k + v }).to eq 6
  end

  it 'can add strings' do
    expect(['jack', 'is', 'good', 'at', 'coding'].jack_inject { |k, v| k + v }).to eq 'jackisgoodatcoding'
  end

  it 'can start with a number' do
    expect([1, 2, 3].jack_inject(10) { |k, v| k + v }).to eq 16
  end

  it 'can multiply by starting with a number' do
    expect([1, 2, 3].jack_inject(4) { |k, v| k * v }).to eq 24
  end
end
