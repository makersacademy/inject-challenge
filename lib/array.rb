# I know this code needs to be dried out
class Array
  def my_inject param1 = 0, param2 = nil, &block # rubocop: disable all
    case param2
    when !(String || Symbol || Nil)
      puts param2.to_s + "is not a string or a symbol"
    end

    case param1
    when 0
      puts 'Block passed, no starting point'
      memo = shift
      each do |element|
        memo = block.call(memo, element)
      end
      memo
    when Symbol
      puts 'A symbol has been passed without a starting point'
      my_inject { |accumulator, element| accumulator.send(param1, element) }
    when String
      puts 'A string has been passed without a starting point'
      symbol = param1.to_sym
      my_inject { |accumulator, element| accumulator.send(symbol, element) }
    when Fixnum
      case param2
      when Symbol
        puts "A starting point has been passed with a symbol"
        my_inject(param1) { |accumulator, elem| accumulator.send(param2, elem) }
      when String
        puts "A starting point has been passed with a string"
        symb = param2.to_sym
        my_inject(param1) { |accumulator, elem| accumulator.send(symb, elem) }
      else
        puts "A starting point has been passed with a block"
        memo = shift
        memo = block.call(memo, param1)
        each do |element|
          memo = block.call(memo, element)
        end
        memo
      end
    end
  end
end
