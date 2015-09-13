class Array

 def injekt(*args, &block)

   if !block_given?
     sym = args.last
     unless sym.is_a?(Symbol) || sym.is_a?(String)
       raise TypeError.new("#{sym} is not a symbol nor a string")
     end
     block = proc { |memo, obj| memo.send(sym, obj)}
   end

   memo = self.shift

   until self.empty? do
     obj = self.shift
     memo = block.call(memo, obj)
   end

   memo

 end

end
