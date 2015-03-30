class Array
  def gusject(*args, &block)
    if args.empty? || args[0].instance_of?(Symbol)
      gusject_no_initial(args, block)
    else
      gusject_with_initial(args, block)
    end
  end

  private

  def gusject_with_initial(args, block)
    sum = args[0]
    if block
      each { |el| sum = block.call(sum, el) }
    else
      each { |el| sum = sum.send(args[1], el) }
    end
    sum
  end

  def gusject_no_initial(args, block)
    sum = first
    if block
      (1...length).each { |index| sum = block.call(sum, self[index]) }
    else
      (1...length).each { |index| sum = sum.send(args[0], self[index]) }
    end
    sum
  end
end
