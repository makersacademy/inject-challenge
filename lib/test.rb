[1,2,3,4].each_with_index do |elem,index|
puts "this is the #{index +1} iteration"
puts "the element on which the block is beeing executed is #{elem}"
puts "=======  "* 20 
puts elem*elem
end

[1,2,3,4,5,6].inject(100) do |acc, el|
puts "this happens before iteration"
puts "at this iteration the acc is: #{acc} and the el is: #{el}"
puts "==="*20
acc+el
end