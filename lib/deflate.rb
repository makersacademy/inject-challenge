class Array
  def deflate(*args, &block)
    return deflate_block(args.first, block) if block_given?
    deflate_no_block(*args)
  end

  private

  def deflate_block(explicit_initial, block)
    memo = explicit_initial || shift
    each { |element| memo = block.call(memo, element) }
    memo
  end

  def deflate_no_block(explicit_initial = false, method)
    memo = explicit_initial || shift
    each { |element| memo = memo.send(method, element) }
    memo
  end
end
