class Array
  def my_inject(initial=undefined, sym=undefined)
    if !block_given? or !undefined.equal?(sym)
      if undefined.equal?(sym)
        sym = initial
        initial = undefined
      end

      # Do the sym version

      sym = sym.to_sym

      each do
        o = Rubinius.single_block_arg
        if undefined.equal? initial
          initial = o
        else
          initial = initial.__send__(sym, o)
        end
      end

      # Block version
    else
      each do
        o = Rubinius.single_block_arg
        if undefined.equal? initial
          initial = o
        else
          initial = yield(initial, o)
        end
      end
    end

    undefined.equal?(initial) ? nil : initial
  end
end
