class Array

  def injecct *args

    if args.empty?
      temp_array = self.slice(1..self.length)
      @total = self[0]
      temp_array.each do |x|
        @total = yield([@total, x])
      end
    else
      temp_array = self
      @total = args[0]
      temp_array.each do |x|
        @total = yield([@total, x])
      end
    end
    @total
  end

end
