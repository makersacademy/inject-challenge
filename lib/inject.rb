class Array
  def kinject
    set = []
    set << self[0]+self[1]
    i = 2
    loop do
      set << set[-1]+self[i]
      i+=1
      break if i > self.length-1
    end
  set[-1]  
  end

  
end