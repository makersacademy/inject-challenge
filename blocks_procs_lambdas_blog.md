```
What are blocks, procs and lambdas?
Provide code examples to show the differences between each of them.
What makes procs and lambdas different to methods?
```
In Ruby, blocks are simply, well, blocks of executable code. They are defined with curly braces, `{ puts 'I'm a block' }`, or `do` and `end` keywords. We use them all the time when making loops so they are familiar even if we didn't realise that's what we were doing at the time.

`Procs` and `lambdas` are merely syntax literal forms of blocks, that is to say, they are explicitly defined objects bound to local variables. The main differences between them are that if you `return` from a `Proc` you return from the calling method (the code behaves as if it was part of the calling method), and if you `return` from a `lambda` you pass control back to the calling method. The latter is more expected behaviour so it's used much more often.

In addition, `lambda`s check the number of arguments passed to them whereas `Proc`s do not.

If you create a block as a `Proc` or a `lambda` we can get Ruby to treat it like it was a plain ol' block by referring to it with an ampersand before its name.

## Block example
Notice below that the block is passed implicitly to the `calculator` method, that is to say, it's not one of its arguments.

The `yield` keyword is used to call the block implicitly passed.
```
def calculator(a, b)
  yield(a, b)
end

calculator(1, 2) { |a, b| a + b }
```
```
=> 3
```
If you don't pass a block you get a `LocalJumpError` rather than the usual argument checking afforded by Ruby. To protect against this there is a `block_given?` method that tells you whether a block has been passed implicitly, as shown above.

## `Proc` and `lambda` example
```
adder = Proc.new { |a, b| a + b }

def black_adder(a, b, proc)
  proc.call(a, b)
end
```
```
=> 3
```
We could have used `adder = lambda { |a, b| a + b }` above, and if we'd done so we chould have called it with `proc.call(a,b` which would have given an `ArgumentError` rather than a horrible `TypeError` caused by one of the numbers being added being `nil`. Much better behaviour! (You could also have explicitly `return`ed from it without killing the whole method.)

