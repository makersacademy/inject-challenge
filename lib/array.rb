class Array

  def my_inject(initial_value = nil)
    if initial_value.nil?
      value = self[0]
      array = self[1..-1]
    else
      value = initial_value
      array = self
    end
    array.each do |element|
      value = yield(value, element)
    end
    value
  end
end

# Testing
# puts 'This is my inject'
# p [1, 2, 3, 4].my_inject(100) { |value, element| value / element }
# puts 'This is Ruby\'s inject'
# p [1, 2, 3, 4].inject(100) { |value, element| value / element }