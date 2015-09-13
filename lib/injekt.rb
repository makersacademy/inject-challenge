class Array

 def injekt(sym)

   unless sym.is_a?(Symbol) || sym.is_a?(String)
     raise TypeError.new("#{sym} is not a symbol nor a string")
   end

   memo = self.shift

   until self.empty? do
     obj = self.shift
     memo = memo.send(sym, obj)
   end

   return memo

 end

end
