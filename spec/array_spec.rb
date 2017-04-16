require 'array'

describe Array do
  it 'can add with not block and starting arguments' do
    expect([1, 2, 3].my_inject do |result, product|
      result + product
    end).to eq 6
  end

  it 'can times with not block and starting arguments' do
    expect([1, 2, 3].my_inject do |result, product|
      result * product
    end).to eq 6
  end

  it 'can add with starting argument' do
    expect([1, 2, 3].my_inject(10) do |result, product|
      result + product
    end).to eq 16
  end

  it 'can times with starting argument' do
    expect([1, 2, 3].my_inject(10) do |result, product|
      result * product
    end).to eq 60
  end

  it 'can add with a symbol' do
    expect([1, 2, 3].my_inject(:+)).to eq 6
  end

  it 'can times with a starting argument and a symbol' do
    expect([1, 2, 3].my_inject(10, :*)).to eq 60
  end
end
