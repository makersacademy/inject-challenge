class Array
  def my_inject &block
   return self[0] unless self.count > 1
   self[1] = yield(self[0], self[1])
   self[1..-1].my_inject &block
  end
end


p [2,3,4].inject { |sum, next_number | sum + next_number }
p [2,3,4].my_inject { |sum, next_number | sum + next_number }

#test = [1,2,3,4]

test_array = [2,3,4]
test_array.inject { |sum, next_number | sum + next_number }

p [2,3,4].my_inject { |sum, number| sum - number }

test_array = [2,3,4]

p test_array.inject { |sum, number| sum - number }

#p test[1..-1]