class Array

  def diy_inject(initial=0)
    if initial == 0
      memo = self[0]
    else
      memo = initial
    end
    self.each_with_index do |item, index|
      if index == 0 && initial == 0
        next
      end
      memo = yield memo, item
    end 
    memo
  end
end