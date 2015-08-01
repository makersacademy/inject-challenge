class Array

  def my_inject(arg=0,&block)
    self.each do |us|
      arg = block.call(arg, us)
    end
    arg
  end

end