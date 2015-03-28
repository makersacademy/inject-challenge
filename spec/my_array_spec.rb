require 'my_array'

describe MyArray do
  let(:array) { (1..5) }
  let(:subject) { described_class.new(array) }
  it 'can sum elements in an array together using a block' do
    expect(array.inject { |sum, item| sum += item }).to eq 15
    expect(subject.inject { |sum, item| sum += item }).to eq 15
  end

  it 'can sum elements in an array using a block, with a start point' do
    expect(array.inject(5) { |sum, item| sum += item }).to eq 20
    expect(subject.inject(5) { |sum, item| sum += item }).to eq 20
  end

  it 'can sum elements in an array using a symbol' do
    expect(array.inject(:+)).to eq 15
    expect(subject.inject(:+)).to eq 15
  end

  it 'can multiply elements in an array using a symbol and a start point' do
    expect(array.inject(5, :*)).to eq 600
    expect(subject.inject(5, :*)).to eq 600
  end

  let(:string_array) { %w(A b C) }
  let(:string_subject) { described_class.new(string_array) }

  it 'can accept string values in the array with a symbol' do
    expect(string_array.inject(:+)).to eq "AbC"
    expect(string_subject.inject(:+)).to eq "AbC"
  end

  it 'can accept string values in the array with a block' do
    expect(string_array.inject { |sum, item| sum += item }).to eq "AbC"
    expect(string_subject.inject { |sum, item| sum += item }).to eq "AbC"
  end

end