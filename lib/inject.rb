class Array

  def inject1(a= nil, b=nil)
    inject = a ? b : self.shift
    self.map {|x| inject = yield(inject , x)}
    return inject
  end


  # def inject2
  #   a, b = []
  #   if []
  #     a
  #   else
  #     a + b
  #     end
  #   end


end
