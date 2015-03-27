class Array
  def gusject
    sum = first
    if block_given?
      (1...length).each do |index|
        sum = yield(sum, self[index])
      end
    end
    sum
  end
end
