class MyArray



 def my_inject array, &my_block
   acc = array
   acc.each do |num|
   result = yield(acc, num)
   end

 end






end


# array = My_array.new
# array.my_inject([1,2,3,4])
