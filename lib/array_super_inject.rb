class Array
  def super_inject *args, &block
    array = self

    operand = operand(*args)
    r_tot = start_point(*args)
    r_tot = array.shift unless r_tot

    if operand
      array.each { |elmt| r_tot = r_tot.send(operand, elmt) }
    else
      array.each { |elmt| r_tot = block.call r_tot, elmt }
    end
    r_tot
  end

  def operand *args
    args.each { |arg| return arg if arg.is_a?(Symbol) }
    nil
  end

  def start_point *args
    args.each { |arg| return arg if arg.is_a?(Integer) }
    nil
  end

  def sup_inj_rec start = nil, &block
    array = self
    return array[0] if array.size == 1
    memo = start || array.shift
    block.call memo, sup_inj_rec(&block)
  end
end



