
class MyArray < Array

  def attempt_at_inject(*arg)
    raise "#attempt_at_inject called without block" if not block_given?
    if arg.empty?
      i = 0
      result = self[i]
      (self.length-1).times do
        element = self[i+1]
        result = yield(result, element)
        #puts "#{i}th result is equal to: #{result}"
        i+=1
      end
      return result
    else
      raise "#attempt_at_inject given too many arguments for initial value" if arg.length >1
      i = 0
      result = arg[0]
      (self.length).times do
        element = self[i]
        result = yield(result, element)
        #puts "#{i}th result is equal to: #{result}"
        i+=1
      end
      return result
    end
  end

end
