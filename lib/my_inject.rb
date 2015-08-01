class Array

  def my_inject(arg=nil,&block)
    c = self[0].class

    test = class_checker(c,self)
    fail "Array not usable" if test = false

    arg = arg_setter(c,arg)

    self.each do |us|
      arg = block.call(arg, us)
    end
    
    arg
  end

  def class_checker(c, array)
    array.each { |x| x.class == c ? true : (return false) }
  end

  def arg_setter(c,arg)
    if c == Fixnum
      arg = arg.to_i
    elsif c == String
      arg = arg.to_s
    elsif c == Float
      arg = arg.to_f
    end
  end
end