class Array
  def faisal_inject (arg = 'empty', symbol = nil)

    arithmetic_proc = symbol.to_proc if symbol.instance_of? Symbol
    arithmetic_proc = arg.to_proc if arg.instance_of? Symbol

    if arg.instance_of? Fixnum
      return faisal_inject(arg){|k,v| arithmetic_proc.call(k,v)} if symbol.instance_of? Symbol
    end

    return faisal_inject{|k,v| arithmetic_proc.call(k,v)} if arg.instance_of? Symbol

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

  attr_accessor :total, :temp_array, :arithmetic_proc

  def arg_input? arg
    arg == 'empty'
  end

end
