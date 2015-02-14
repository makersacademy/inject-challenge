class Array

def inject_alt(start_point = 0, operation = "+", &block)
    start_point == 0 ? total = self.shift : total = start_point      
    self.dup.each do|element|
      yield self.shift, element
      total = total.public_send operation,element
    end
    total
end
end

#check which operator is included in block? (--> remove operation arg)
