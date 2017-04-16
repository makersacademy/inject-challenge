class Array
  def ninject(initial = nil, &proc)
    each_with_index do |obj, index|
      if index == 0
        @memo = initial.nil? ? obj : proc.call(initial, obj)
      else
        @memo = proc.call(@memo, obj)
      end
    end
    @memo
  end
end
