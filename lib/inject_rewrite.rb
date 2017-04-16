class Array
  def inject_rewrite(count = self.shift)
    each { |e| count = proc.call(count, e) }
    count
  end
end