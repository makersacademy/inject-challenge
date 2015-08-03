class Array

  def my_inject(arg=nil,&block)
    c = self[0].class == Float ? Fixnum : self[0].class

    fail "Array not usable" if !class_checker(c,self)

    arg = arg_setter(c,arg)

    self.each do |us|
      arg = block.call(arg, us)
    end

    arg
  end

  def class_checker(c, array)
    array.each { |x| (x.class == Float ? Fixnum : x.class) == c ? true : (return false) }
  end

  def arg_setter(c,arg)
    if c == Fixnum
      arg.to_i
    elsif c == String
      arg.to_s
    elsif c == Float
      arg.to_f
    elsif c == Array
      arg.to_a
    end
  end
end