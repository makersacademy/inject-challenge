class Array
  def faisal_inject (arg = 'empty', symbol = nil)

    if arg.instance_of? Fixnum
      return faisal_inject(arg){|k,v| k + v} if symbol == :+
      return faisal_inject(arg){|k,v| k - v} if symbol == :-
      return faisal_inject(arg){|k,v| k * v} if symbol == :*
      return faisal_inject(arg){|k,v| k / v} if symbol == :/
    end

    #symbol.to_proc

    return faisal_inject{|k,v| k + v} if symbol == :+ || arg == :+
    return faisal_inject{|k,v| k - v} if symbol == :- || arg == :-
    return faisal_inject{|k,v| k * v} if symbol == :* || arg == :*
    return faisal_inject{|k,v| k / v} if symbol == :/ || arg == :/

    if arg_input? arg
      temp_array = self.slice(1 , self.size - 1)
      total = self[0]
    else
      temp_array = self
      total = arg
    end

    temp_array.each { |i| total = yield([total,i]) }
    total

  end


  private

  attr_accessor :total, :temp_array

  def arg_input? arg
    arg == 'empty'
  end

end
