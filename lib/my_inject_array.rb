class Array
  def my_inject(start = nil, &code)
    code = Proc.new
    start == nil ? memo = 0 : memo = start
      self.count.times do |n|
      element = self.at(n)
      memo += element
      puts "at this iteration memo is #{memo}, and element is #{element}."
    end
    return memo
  end
end

# [2, 4, 6].my_inject(5) { |memo, element| memo + element }
