module Inject_challenge

  def new_inject start_with=false
    self.each do |i|
      unless start_with
        start_with = self.first
        next
      end
      n = yield(start_with, i)
      start_with = n
    end
    start_with
  end

end

class Range
  include Inject_challenge
end

class Array
  include Inject_challenge
end
