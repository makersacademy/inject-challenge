class Array
  def custom_inject
    injector = shift # i.e: self.shift (RuboCop is not being friendly!)
    each { |num| injector = yield(injector, num) }
    injector
  end
end
