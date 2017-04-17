class Array
    def inject_1 (n=1)
    n ||= self.shift
    self[1..-1].each do | i |
      n = yield(n, i)
    end
    n
  end
end