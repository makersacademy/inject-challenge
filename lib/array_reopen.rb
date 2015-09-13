Array.class_eval do
  def injector(inp)
    self.each do |x|
      x 
    end
end