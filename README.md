Inject Challenge (Rubyist Badge)
================

Custom Inject method using Array class

* array.rb - I used three methods to mimic the Inject method.
The main method my_inject handled block inputs with & without a start number given
* with_symbol handles the array if argument is a symbol
* with_symbol_and_init handles the array if arguments are a start number and a symbol

Task
* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.


[![Build Status](https://travis-ci.org/makersacademy/inject-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/inject-challenge)
[![Coverage Status](https://coveralls.io/repos/makersacademy/inject-challenge/badge.png)](https://coveralls.io/r/makersacademy/inject-challenge)
