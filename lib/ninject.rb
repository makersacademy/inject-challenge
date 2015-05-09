class Array
  def ninject(start = nil, &code)
    proc = proc (&code)
    each_with_index do |obj, index|
      if index == 0
        start.nil? ? @memo = obj : @memo = proc.call(start, obj)
      else
        @memo = proc.call(@memo, obj)
      end
    end
    @memo
  end
end
