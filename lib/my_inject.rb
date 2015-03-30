class Array
  def my_inject accum=first, sym="", &bloc
    #accum = self.first if accum == ""
    n = count
    x = 0
    if sym != ""
      while x <= n - 1
        y = self[x]
        accum = eval("#{accum} #{sym} #{y}")
        x += 1
      end
    else
      while x <= n - 1
        accum = bloc.call(accum, self[x])
        x += 1
      end
    end
      puts accum
  end
end

# m = [1, 2, 3]
# m.my_inject(2, :*){ |a, b| a + b }
# p m
