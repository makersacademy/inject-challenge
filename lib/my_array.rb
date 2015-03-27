class MyArray < Array
  def initialize(array)
    @array = array
  end

  def inject(arg1 = 0, arg2 = nil)
    memo = arg1
    if arg1.is_a? Symbol
      memo = 0
      @array.each { |value| memo = memo.send(arg1, value) }
    elsif arg2.is_a? Symbol
      @array.each { |value| memo = memo.send(arg2, value) }
    else
      @array.each { |value| memo = yield(memo, value) }
    end
    memo
  end
end
