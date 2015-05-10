class Array

  def inject_rw(input)
    output = 0
    input.each do |n|
      output += n
    end
    output
  end

end

# expect([1,2,3,4].inject_rw() { |sum, n| sum + n}).to eq [1,2,3,4].inject{|sum, n| sum + n}