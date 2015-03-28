# Here is how to make acc, element pass into the yield thing:
# yield(acc, element)
# Need to have local variables to do that though

# Arguments are starting point, symbol, block
# If symbol, don't run code from block. If no starting point, default to first
# item in array.

# want the accumulator to loop through the items in the array, using
# instructions provided by the block.

class Array
  def my_inject(starting_point = nil, _symbol = nil, _block = nil)
    starting_point.nil? ? accumulator = self[0] : accumulator = starting_point
    if starting_point.nil?
      drop(1).each { |element| accumulator = yield(accumulator, element) }
    else
      each { |element| accumulator = yield(accumulator, element) }
    end
    accumulator
  end
end

# For running in sublime

array = [1, 2, 3]
# p array.inject { |acc, element| acc + element }
# p array.my_inject { p "should be repeated 3 times" }
p array.my_inject { |acc, element| acc + element }
# { |acc, element| acc + element }
#
