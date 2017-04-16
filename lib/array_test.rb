class Array
  def inject_add
    result = 0
    each do |num|
      result = yield result, num
    end
    result
  end

  def inject_times
    result = 1
    each do |num|
      result = yield result, num
    end
    result
  end

  def inject_add_starting(starting)
    result = starting
    each do |num|
      result = yield result, num
    end
    result
  end

  def inject_times_starting(starting)
    result = starting
    each do |num|
      result = yield result, num
    end
    result
  end

  def inject_add_symbol(*)
    result = 0
    each do |num|
      result += num
    end
    result
  end

  def inject_times_symbol_starting(starting, *)
    result = starting
    each do |num|
      result *= num
    end
    result
  end
end

# p [1, 2, 3].inject_times_symbol_starting(10, :+)
# p [1, 2, 3].inject_add_symbol(:+)

# p [1, 2, 3].inject_add { |result, number| result + number }
# p [1, 2, 3].inject_times { |result, number| result + number }

# p [1, 2, 3].inject_add_starting(10) { |result, number| result + number }
# p [1, 2, 3].inject_times_starting(10) { |result, number| result + number }

