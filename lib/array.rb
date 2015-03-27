class Array
  def gusject(initial = false)
    sum = initial ? initial : first
    start_value = initial ? 0 : 1
    if block_given?
      (start_value...length).each do |index|
        sum = yield(sum, self[index])
      end
    end
    sum
  end
end
