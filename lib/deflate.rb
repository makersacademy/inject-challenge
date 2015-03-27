class Array
  def deflate(arg = nil, &block)
    if block_given?
      deflate_with_block(arg, block)
    else
      deflate_without_block(arg)
    end
  end

  private

  def deflate_with_block(number_to_begin_with, block)
    number_to_begin_with.nil? ? start_from_index = 1 : start_from_index = 0
    total = number_to_begin_with || first
    self[start_from_index..-1].each do |num|
      total = block.call(total, num)
    end
    total
  end

  def deflate_without_block(sym)
    total = first
    self[1..-1].each do |num|
      total = total.send(sym, num)
    end
    total
  end
end
