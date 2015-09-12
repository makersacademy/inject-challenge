require 'new_inject'

describe Array do
  describe "#new_inject" do
    it {expect(subject).to respond_to(:new_inject).with(0).argument}
  end
end
