class Array
  def my_inject arg = false, arg_sym = false, &block
    add = Proc.new { |mem, el| mem + el }
    subtract = Proc.new { |mem, el| mem - el }
    multipy = Proc.new { |mem, el| mem * el }
    divide = Proc.new { |mem, el| mem / el }
    blocks_hash = {
      :+ => add,
      :- => subtract,
      :* => multipy,
      :/ => divide
    }
    if arg_sym
      total = arg
      self.each do |el|
            total = blocks_hash[arg_sym].call(total, el)
        end
    else
      case arg
      when Symbol
        total = self.shift
        self.each do |el|
            total = blocks_hash[arg].call(total, el)
        end
      else
        arg ? total = arg : total = self.shift
        self.each do |el|
            total = block.call(total, el)
        end
      end
    end
    total
  end
end