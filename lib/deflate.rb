class Array
  def deflate(start_with = nil)
    start_with.nil? ? starting_index = 1 : starting_index = 0
    total = start_with || first
    self[starting_index..-1].each do |num|
      total = yield(total, num)
    end
    total
  end
end
