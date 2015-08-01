
require 'inject.rb'

describe Array do
  subject { [1, 2, 3, 4] }

  it 'responds to injjject' do
    expect(subject).to respond_to(:injjject).with(1).argument
  end
  it 'behaves as expected when summing numbers' do
    my_proc = Proc.new {|result, element| result + element}
    outcome = subject.injjject(0, &my_proc)
    expect(outcome).to eq 10
  end
end
