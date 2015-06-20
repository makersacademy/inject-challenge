https://travis-ci.org/makersacademy/inject-challenge.svg?branch=master
Inject Challenge (Rubyist Badge)
================

Solution
--------

The method I recreated is Ruby inject
inject { |memo, obj| block } → obj

I used some examples from http://ruby-doc.org/core-2.2.2/Enumerable.html#method-i-inject to uild my test cases for the 'injector' array method. The first test case checked if [1, 2]].injector { |sum, n| sum + n } returned 3. 

I created the injector method with 1 argument and set it to return 3, to pass the initial test. I then modified the test array to [1, 5, 2] and the expected return value to 8. 

This meant I had to build the method itself to get the test to pass. I set the initial result to the first value of the array and tested the logic of returning

result = self[0]
result = yield result, self[1]
result = yield result, self[2]

This returned the value required to pass the test. 

I added a test that used an array of strings and a block that checked whether the current string was longer than the memo (the current value of result). I also added a test that used a multiplication block on an array of 6 integers. This meant I had to amend the method to work for an array containing a number of items that was not 3.

I changed the method so it cycled through the array starting at index 1 and yielded to the block each time using the current 'memo' (see Ruby inject method above) and the current array value. 

I added a test to check that arrays containing one value returned that value. Since the result is intially set to the first array value and the loop does not function if there is only one value, this test passed.

I added more tests to check that using negative integers worked and refactored the code.

Task
-----

* Reopen the Array class or subclass it.
* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
* If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass.
* Submit pull request with your solution


[![Build Status](https://travis-ci.org/makersacademy/inject-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/inject-challenge)
[![Coverage Status](https://coveralls.io/repos/makersacademy/inject-challenge/badge.png)](https://coveralls.io/r/makersacademy/inject-challenge)
