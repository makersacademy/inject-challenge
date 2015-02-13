class Challay < Array

  # I have no idea how to make 'challay.inject(:+)' work

  def inject
    raise 'no block given' if !block_given?
    sum = first
    each do |x|
      if index(x) != 0
        sum = yield sum,x
      else
        sum
      end
    end
    sum
  end

end