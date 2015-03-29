class Array
  def my_inject(*parameter)
    copy = dup
    memo = copy.shift
    index = 0

    (copy.count).times do
      n = copy.shift
      if parameter[index].is_a? Symbol
        memo = memo.send(parameter[index], n)
      else
        memo = yield(memo, n)
      end
    end

    memo
  end
end
