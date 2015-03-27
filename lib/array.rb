class Array
  def gusject(*args)
    if block_given?
      sum = args.empty? ? first : args.first
      start_value = args.empty? ? 1 : 0
      (start_value...length).each do |index|
        sum = yield(sum, self[index])
      end
    else
      sum = args.length == 1 ? first : args.first
      start_value = args.length == 1 ? 1 : 0
      (start_value...length).each do |index|
        sum = sum.send(args.first, self[index])
      end
    end
    sum
  end
end
