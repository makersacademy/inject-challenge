class Array
	def rekt(rk = self.first, &block)
    self.shift if rk == self.first
    self.each do |x|
      rk = block.call(rk, x)
    end
    p rk
  end
end
