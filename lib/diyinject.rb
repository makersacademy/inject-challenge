class Array

  def diy_inject
    memo = self[0]
    self.each_with_index do |item, index|
      if index == 0
        next
      end
      memo = yield memo, item
    end 
    memo
  end
end


# some of my working (for future reference):

# sum = self[0]
# then iterations start with the first element ignored

# n   = self[0+1]     2
# sum = sum + n       3


# n   = self[1+1]     3
# sum = sum + n       6

# n   = self[1+1]     4
# sum = sum + n       10