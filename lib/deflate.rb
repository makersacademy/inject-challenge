class Array
  def deflate(*args, &block)
    return deflate_without_block(*args) unless block_given?
    deflate_with_block(args.first, block)
  end

  private

  def deflate_with_block(initial, block)
    initial.nil? ? start_from_index = 1 : start_from_index = 0
    total = initial || first
    self[start_from_index..-1].each do |num|
      total = block.call(total, num)
    end
    total
  end

  def deflate_without_block(initial = nil, sym)
    initial.nil? ? start_from_index = 1 : start_from_index = 0
    total = initial || first
    self[start_from_index..-1].each do |num|
      total = total.send(sym, num)
    end
    total
  end
end
