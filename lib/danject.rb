module Enumerable
  def danject(*accum)
    if accum.empty?
      accum = self.first
      self.drop(1).each do |item|
        accum = yield(accum, item)
      end
    else
      accum = accum[0]
      self.each do |item|
        accum = yield(accum, item)
      end
    end
    accum
  end
end
