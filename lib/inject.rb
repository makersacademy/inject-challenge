class TestArray

  attr_reader :nums

  def initialize
    @nums = [1,2,3,4,5,6,7,8,9,10]
  end

  def sum_numbers(nums)
    nums.inject { |memo, num| memo + num }
  end

  def shortest(word)
    word.inject { |shortest, word| shortest.length < word.length ? shortest : word }
  end
end