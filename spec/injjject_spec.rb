
require 'injjject.rb'

describe Array do
  subject { [1, 2, 3, 4] }

  it 'responds to injjject' do
    expect(subject).to respond_to(:injjject)
  end
  it 'behaves as expected when summing numbers' do
    expect(subject.injjject(0) { |result, element| result + element }).to eq 10
  end
  it 'behaves as expected when multiplying numbers' do
    expect(subject.injjject(1) { |result, element| result * element }).to eq 24

  end
  it 'behaves as expected when subtracting numbers' do
    expect(subject.injjject(1) { |result, element| result - element }).to eq(-9)
  end
end
