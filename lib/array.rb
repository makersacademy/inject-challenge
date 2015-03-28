class Array
  def custom_inject(operation = nil)
    injector = shift # i.e: self.shift (RuboCop is not being friendly!)
    case operation
    when :+
      each { |num| injector += num }
    when :-
      each { |num| injector -= num }
    when :*
      each { |num| injector *= num }
    when :/
      each { |num| injector /= num }
    else
      each { |num| injector = yield(injector, num) } if block_given?
    end
    injector
  end
end
