Inject Challenge (Rubyist Badge)
================

Instructions
-------

* Feel free to use google, your notes, books, etc but work on your own
* You must submit a pull request to this repo with your challenge solution by 9am Monday morning

Task
-----

* Fork this repo
* Ensure you have the 'bundle' gem by running the command 'gem install bundle'. Then run the command 'bundle' in the project directory to ensure you have all the gems you need for this.
* Reopen the Array class or subclass it.
* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
* If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass.
* Submit pull request with your solution


[![Build Status](https://travis-ci.org/RBGeomaticsRob/inject-challenge.svg)](https://travis-ci.org/RBGeomaticsRob/inject-challenge)
[![Coverage Status](https://coveralls.io/repos/RBGeomaticsRob/inject-challenge/badge.svg?branch=master)](https://coveralls.io/r/RBGeomaticsRob/inject-challenge?branch=master)
