class Array

def dave_inject(acc = 0, &block)
  self.each do |x|
    acc = block.([acc, x ])
  end
  acc
end

end