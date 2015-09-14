class Array

  def alex_inject(result = nil)
    duplicate = self.dup
    if result == nil; result = duplicate[0]; duplicate.delete_at(0); end

    duplicate.each { |element| result = yield(result, element) }
    result
  end


  def alex_rec_inject(result = 0, i = 0, &block)

    if i == self.length
      result
    else
      puts "Right after esle the result is #{result}"
      result = block.call(result, self[i])
      puts "Right after yield the result is #{result}"
      alex_rec_inject(result, i+1, &block)
    end

  end


end
