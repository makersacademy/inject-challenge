require 'inject_rw'

describe Array do

  it 'Can add' do
    code = (0..5).to_a.inject_rw { |a, e| a + e }
    expect(code).to eq (0..5).to_a.inject { |a, e| a + e }
  end

  it 'Can multiply' do
    code = (0..5).to_a.inject_rw { |a, e| a * e }
    expect(code).to eq (0..5).to_a.inject { |a, e| a * e }
  end

  it 'Can add with a starting point' do
    code = (0..5).to_a.inject_rw(10) { |a, e| a + e }
    expect(code).to eql (0..5).to_a.inject(10) { |a, e| a + e }
  end

  it 'Can multiply with a starting point' do
    code = (0..5).to_a.inject_rw(10) { |a, e| a * e }
    expect(code).to eq (0..5).to_a.inject(10) { |a, e| a * e }
  end

  it 'Can add with a symbol' do
    code = (0..5).to_a.inject_rw(:+)
    expect(code).to eql (0..5).to_a.inject(:+)
  end

  it 'Can add with a starting point and a symbol' do
    code = (0..5).to_a.inject_rw(10, :*)
    expect(code).to eq (0..5).to_a.inject(10, :*)
  end

  it 'Can handle strings' do
    code = ['john', 'ringo', 'george', 'paul'].inject_rw { |a, e| a + e }
    expect(code).to eq ['john', 'ringo', 'george', 'paul'].inject { |a, e| a + e }
  end

  it 'Can handle strings (with symbols)' do
    code = ['john', 'ringo', 'george', 'paul'].inject_rw(:+)
    expect(code).to eq ['john', 'ringo', 'george', 'paul'].inject(:+)
  end

end