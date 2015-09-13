class Array

  def my_inject(acc=nil)

    case acc
    when Symbol
      return my_inject { |method, param| method.send(acc, param) }
    when acc.nil?
      result = nil
    else
      result = acc
    end

    acc ||= self.first
    self[1..-1].each do |elem|
      acc = yield(acc,elem)
    end
    acc

  end

end
