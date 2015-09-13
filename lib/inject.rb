class Array
  def my_inject(symbol,*start)
    # if block_given?
    if start.empty?
      case symbol
      when :+
        start = 0
      when :-
        start = 0
      when :*
        start = 1
      when :/
        start = 1
      end
    else
      start = start[0]
    end

    case symbol
      when :+
        self.each do |x|
        start += x
      end
      when :-
        self.each do |x|
        start -= x
      end
      when :*
        self.each do |x|
        start *= x
      end
      when :/
        self.each do |x|
        start /= x
      end
    end
    start
    # else
    #   puts "Hello"
    # end
  end
end
