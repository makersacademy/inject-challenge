class Array
  def my_inject(*options, &code)
    array = self.map { |e| e }
    if options.any? { |i| i.class == Symbol }
      if options[0].class == Symbol
        operator = options[0] 
        acc = array.shift
      else
        acc = options[0]
        operator = options[1]
      end 
      array.each { |ele| acc = acc.send(operator, ele) }
      acc
    else  
      acc = options[0] == nil ? array.shift : options[0]
      array.each { |ele| acc = code.call(acc, ele) }
      acc
    end    
  end  
end

