class Array

  def injecty(default = 0)
    # accumulator set to default value or first item in array
    accumulator = default || self[0]

    self.each do |iterated|
      accumulator = accumulator + iterated
    end

    accumulator
  end
  # def injecty(default = 0, &block)
  #   accumulator = default || self[0]
  #   self.each do |iterated|
  #     accumulator = yield(accumulator, iterated)
  #   end
  # end
  #
  # injecty(6) { |iterated| accumulator = accumulator + iterated }
end
