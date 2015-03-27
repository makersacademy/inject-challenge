class Array
  def my_inject starting = 0
    @result ||= starting + self.first
    self[1..-1].each do |value|
      @result = yield(@result, value)
    end
    @result
  end
end

# class Array
#   def my_inject starting = self.first
#     starting ? thing = self : thing = self[1..-1]
#     @result = starting
#     thing.each do |value|
#       @result = yield(@result, value)
#     end
#     @result
#   end
# end
