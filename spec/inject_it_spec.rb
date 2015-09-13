require 'inject_it.rb'

describe Array do

  it { is_expected.to respond_to :inject_it }

  it "should sum all numbers with no argument" do
    array = [1, 2, 3, 4]
    outcome = array.inject {|result, item| result + item}
    expect(subject.inject_it(array, 0) {|result, item| result + item} ).to eq(outcome)
  end

  it "should sum all numbers with one argument" do
    array = [1, 2, 3, 4]
    outcome = array.inject(2) {|result, item| result * item}
    expect(subject.inject_it(array, 2) {|result, item| result * item} ).to eq(outcome)
  end

  it "should add all the words together" do
    array = ["hello", "my", "friend"]
    outcome = array.inject("awesome") {|result, item| result + item}
    expect(subject.inject_it(array, "awesome") {|result, item| result + item} ).to eq(outcome)
  end

end
