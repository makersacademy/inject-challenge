class Array
  def my_inject starting=0, *symbol, &block
    @starting=starting
    self.map.each { |num| @starting+= num }.last
  end
end
