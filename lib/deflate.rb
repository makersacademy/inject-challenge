class Array
  def deflate(*args, &block)
    original = dup
    result = deflate_no_block(*args) unless block_given?
    result = deflate_with_block(args.first, block) if block_given?
    replace original
    result
  end

  private

  def deflate_with_block(explicit_initial, block)
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
