class Array
  def custom_inject
    injector = 0
    each { |num| injector = yield(injector, num) }
    injector
  end
end
