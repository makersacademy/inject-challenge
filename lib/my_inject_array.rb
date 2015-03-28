class Array
  def my_inject &code
    code = Proc.new
    memo = 0
    self.count.times do |n|
      element = self.at(n)
      memo += element
      puts "at this iteration memo is #{memo}, and element is #{element}."
    end
  return memo
  end
end

# [2, 4, 6].my_inject { |memo, element| memo + element }
