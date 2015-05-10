require 'inject_rw'

describe Array do

  it 'Can add' do
    expect([1,2,3].inject_rw{ |a, e| a + e }).to eq 6
  end

  it 'Can multiply' do
    expect([1,2,3].inject_rw{ |a, e| a * e }).to eq 6
  end

  it 'Can add with a starting point' do
    expect([1,2,3].inject_rw(10){ |a, e| a + e }).to eq 16
  end

  it 'Can multiply with a starting point' do
    expect([1,2,3].inject_rw(10){ |a, e| a * e }).to eq 60
  end

  xit 'Can add with a symbol' do
    expect([1,2,3].inject_rw(:+)).to eq 6
  end

  xit 'Can add with a starting point and a symbol' do
    expect([1,2,3].inject_rw(10, :*)).to eq 60
  end

end

  # it 'Can add' do
  #   expect([1,2,3].inject{ |a, e| a + e }).to eq 6
  # end

  # it 'Can multiply' do
  #   expect([1,2,3].inject{ |a, e| a * e }).to eq 6
  # end

  # it 'Can add with a starting point' do
  #   expect([1,2,3].inject(10){ |a, e| a + e }).to eq 16
  # end

  # it 'Can multiply with a starting point' do
  #   expect([1,2,3].inject(10){ |a, e| a * e }).to eq 60
  # end

  # it 'Can add with a symbol' do
  #   expect([1,2,3].inject(:+)).to eq 6
  # end

  # it 'Can add with a starting point and a symbol' do
  #   expect([1,2,3].inject(10, :*)).to eq 60
  # end