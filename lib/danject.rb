module Enumerable
  def danject(*accum)
    if block_given? # Are we handling a symbol or block inject?
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
      return accum
    else
      if accum.count == 1 # Symbol, no initial value
        result = self.first
        self.drop(1).each do |item|
          result = result.send(accum[0], item)
        end
      else # Initial value followed by symbol
        result = accum[0]
        self.each do |item|
          result = result.send(accum[1], item)
        end
      end
      return result
    end
  end
end
