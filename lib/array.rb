class Array

  def molliesinject(start_point = nil, &block)
    start_point = start_point
    self.each_with_index do |element, index|
      if index == 0 && start_point == nil
        @total = element
      elsif @start_point != nil
        self.each { |num| @total = yield(start_point, num)}
      else
        @total = yield(@total, element)
      end
    end
    @total
  end
end