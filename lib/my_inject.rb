# Our method should take an argument and a block. (and a symbol?)

# { p "should be 3 times" } - possibly use self?

# We want to say:
# - Take the first bit of the block, and take the first item of that
# - Make that the accumulator. Make the second item the element
# - The accumulator starts either as the default value, or as
# the beginning of the block.
# - The accumulator and element are added, and then the accumulator
# stores the result.
# - This is fed into the next accumulator run.

# self[index] will return the element. So we need to store the accumulator
# somewhere

# Here is how to make acc, element pass into the yield thing. Do:
# yield(acc, element) -> Need to have local variables to do that
# though

# array = [1, 2, 3, 4]
# class Array
#   def for_each_but_not_all(range)
#     range.each do |i|
#       yield self[i]
#     end
#   end
# end

# array.for_each_but_not_all(0..3) { |x| puts x }

class Array
  def my_inject(_argument = nil)
    acc = 0
    length.times do |index|
      element = self[index]
      acc += element
      p 'Here comes acc'
      p acc
      # yield acc, element
    end
    acc
    # length.times do |index, accumulator|
    #   accumulator = 0 if accumulator.nil?
    #   element = self[index]
    #   p element
    #   accumulator += element
    #   p accumulator
    # end
    # puts length.times { yield }
    # length.times { yield(acc, element) }
  end
end

# array = [1, 2, 3]
# p array.inject { |acc, element| acc + element }
# p array.my_inject # { p "should be repeated 4 times" }
# p array.my_inject { |acc, element| acc + element }
# { |acc, element| acc + element }
#
