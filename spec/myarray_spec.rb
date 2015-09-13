require 'myarray'

describe My_array do

  my_array = [1,2,3,4]

  describe '#my_inject' do
    it {expect(subject).to respond_to(:my_inject).with(1).argument}

    it "should turn an array of numbers into an array of the square of all those numbers" do
      sum_array = my_array.inject([]) do |acc, n|
        acc << n * n
      end
      my_sum_array = my_array.my_inject([]) do |acc, n|
        acc << n * n
      end
      expect(sum_array).to eql(my_sum_array)
    end




  end

end
