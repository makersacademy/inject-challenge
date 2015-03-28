# # def block_lambda(first, second, operation)
# #   operation.call(first, second)
# # end

# # p block_lambda(1, 2, -> (x, y) { x + y })

# def block_yield(first, second)
#   # block_given? shields against yield erros
#   4.times { p yield(first, second) }
# end

# p block_yield(1, 2) { |x, y| x + y }

# def basic_adder(first, second)
#   yield(first, second)
#   nil
# end

# p basic_adder(2, 2) { |x, y| x + y }

# def random
#   puts 'Here are 2 random numbers'
#   yield rand(10), rand(5)
#   puts 'There you are'
# end

# random { |x, y| puts "#{x}, #{y}" }

# My toy which worked for adding, but badly:
# class Array
#   def my_inject(_argument = nil, &block)
#     acc = 0
#     length.times do |index|
#       element = self[index]
#       yield acc, element
#       # acc += element
#       p 'Here comes acc'
#       p acc
#       # yield acc, element
#     end
#     acc
#   end
# end

# sum = 0
# (1..30).each do |num|
#   sum = sum + num
# end

# is the same as:
# (1..30).inject { |sum, num| sum + num }

# Mihai dissections

# puts "First dissection"

# [1, 2, 3, 4].each_with_index do |elem, index|
#   puts 'this is the #{index +1} iteration'
#   puts 'the element on which the block is being executed is #{elem}'
#   puts '=====' * 20
#   puts elem * elem
# end

# [1, 2, 3, 4, 5, 6].inject(100) do |acc, el|
#   puts "this happens before the iteration"
#   puts "at this iteration the acc is: #{acc} and the el is: #{el}"
#   puts "===" * 20
#   acc + el
# end

# [1, 2, 3, 4, 5, 6].inject do |acc, el|
#   puts "this happens before the iteration"
#   puts "at this iteration the acc is: #{acc} and the el is: #{el}"
#   puts "===" * 20
#   acc + el
# end
