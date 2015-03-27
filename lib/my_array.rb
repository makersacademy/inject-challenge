# class Array
#   def my_inject arg = false, arg_sym =false, &block
    
#     add = Proc.new { |mem, el| mem + el }
#     subtract = Proc.new { |mem, el| mem - el }
#     multipy = Proc.new { |mem, el| mem * el }
#     divide = Proc.new { |mem, el| mem / el }

#     case arg
#     when Symbol
#       blocks_hash = {
#         :+ => add,
#         :- => subtract,
#         :* => multipy,
#         :/ => divide
#       }
#       total = self.shift
#       self.each do |el|
#           total = blocks_hash[arg].call(total, el)
#       end
#     else
#       # when passed a block or normal arg
#       arg ? total = arg : total = self.shift
#       self.each do |el|
#           total = block.call(total, el)
#       end
#     end
#     total
#   end
# end


# when passed a block or normal arg
# when passed a Symbol
# when passed an arg and a symbol

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
    puts "arg: #{arg}, arg_sym: #{arg_sym}"
    puts "block = "
    p block
    if arg_sym
      puts 'here'
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
