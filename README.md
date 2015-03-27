Inject Challenge (Rubyist Badge)
================

Instructions
-------

* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
* You must submit a pull request to this repo with your challenge solution by 9am Monday morning

Task
-----

* Fill out your learning plan self review for the week: https://github.com/makersacademy/learning_plan
* Fork this repo
* Reopen the Array class or subclass it.
* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
* If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass.
* Submit pull request with your solution


[![Build Status](https://travis-ci.org/makersacademy/inject-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/inject-challenge)
[![Coverage Status](https://coveralls.io/repos/makersacademy/inject-challenge/badge.png)](https://coveralls.io/r/makersacademy/inject-challenge)

My Notes:
explaining the inject method with addition
___________________________________
the first thing I want to do is add the sum with the first element in the array
(the elements are what is in the array) 
this inject does not contain a initial value so the first loop adds with 0

the sum is the left over from the previous loop and added to the element.
___________________________________

How would I write this in code?

I need to remove the first item from the array and add it with the sum.
the .shift method takes the first item from an array so this could be used.