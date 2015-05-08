class Array
  def custom_inject(*args, &block)
    operation, injector = retrieve_args(*args)
    injector ||= shift # i.e: self.shift (RuboCop is not being friendly!)
    operation_select(operation, injector, block)
  end

  private

  def retrieve_args(*args)
    symbol = args.select { |arg| arg.is_a?(Symbol) }.first
    initial_value = args.select { |arg| arg.is_a?(Numeric) }.first
    [symbol, initial_value]
  end

  def operation_select(operation, injector, block)
    case operation
    when :+ then each { |num| injector += num }
    when :- then each { |num| injector -= num }
    when :* then each { |num| injector *= num }
    when :/ then each { |num| injector /= num }
    else each { |num| injector = block.call(injector, num) }
    end
    injector
  end
end
