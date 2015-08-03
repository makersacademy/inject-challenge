class Array

  def my_inject(accumulator)
    yield(self.each, accumulator)
  end

end

puts 'This is my inject'
[1, 2].my_inject(6) { |element, result| p element, result }

puts 'This is the ruby inject'
p [1, 2, 3, 4].inject(1) { |element, result| p element, result }