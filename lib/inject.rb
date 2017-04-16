class Array
  def my_inject(start=0, symbol=0, &block)
    multiply = 1
    add = 0

'Can add'                   =>    self.map { |i| add += i }.last
'Can add with start point'  =>    self.map { |i| start + add += i }.last
'Can multiply'              =>    self.map { |i| multiply *=i }.last
'Can mult with start pt'    =>    self.map { |i| start * multiply *=i }.last
'Can add with a symbol'     =>    self.map { |i| add += i }.last
'Can add sym & start'       =>    self.map { |i| start + add += i }.last
'Can find longest strings'  =>    self.sort_by { |x| x.length }.last
  end
end






#(start=0, symbol=0, block)
