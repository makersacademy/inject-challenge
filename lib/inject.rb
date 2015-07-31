array = [49,6,7,8]

inject = array.inject (0) { |result_memo, object| result_memo + object }

puts inject




total = 0
array.each do |x|
  total += x
end

puts total

total2 = array[0] + array[1] + array[2] + array[3]


puts total2



def new_inject(value, array)
  total = value
  array.each do |x|
    total += x
  end
  total
end

puts new_inject(0, array)
