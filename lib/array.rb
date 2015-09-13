class Array

  def my_inject(acc=nil)

    if acc == nil
      acc ||= self.first
      self[1..-1].each do |elem|
        acc = yield(acc,elem)
      end
    else
      self[0..-1].each do |elem|
        acc = yield(acc,elem)
      end
    end
    acc
  end
end


    # case acc
    # when Symbol
    #   return my_inject { |method, param| method.send(acc, param) }
    # when acc.nil?
    #   result = nil
    # else
    #   result = acc
    # end
