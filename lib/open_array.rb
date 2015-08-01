class Array
  def my_inject &block
   return self[0] unless self.count > 1
   self[1] = yield(self[0], self[1])
   self.delete(self[0])
   self.my_inject &block
  end
end


#p [1,2,3].inject { |sum, next_number | sum + next_number }
p [5,5,5].my_inject { |sum, next_number | sum + next_number }

