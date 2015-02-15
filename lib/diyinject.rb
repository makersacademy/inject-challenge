class Array

  def diy_inject(initial=:no_initial_given)

    return self.diy_inject { |x,y| x + y} if initial == :+
    return self.diy_inject { |x,y| x * y} if initial == :*
    return self.diy_inject { |x,y| x - y} if initial == :-
    return self.diy_inject { |x,y| x / y} if initial == :/
    return self.diy_inject { |x,y| x ** y} if initial == :**
    return self.diy_inject { |x,y| x % y} if initial == :%
    
    if initial == 0
      self.unshift(0)
    end
    
    if initial == :no_initial_given
      initial = 0
    end
    
    memo = self[0]
    self.each_with_index do |item, index|
      if index == 0 && initial == 0
        next
      end
      memo = yield memo, item
    end 
    memo
  end
end