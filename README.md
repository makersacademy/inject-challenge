Inject Challenge (Rubyist Badge)
================

Task
-----

* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
* If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass.
* Submit pull request with your solution

Solution
--------

* Method inject_remake takes (potentially) one arguement, the starting position for total (memo, used to total up the elements according to the operator). If nothing is supplied then self.shift sets total to the first item in the array, as otherwise it would default to 0.
* self serves on the Array class
* the block iterates over each 'element', yielding the result to total
* total is returned to provide the final result