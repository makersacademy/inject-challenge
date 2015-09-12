Inject Challenge (Rubyist Badge)
================

Instructions
-------

* Write an equivalent inject method for Array class

Current Status
-----

* Completed writing a new inject equivalent method for Array class using self.each.
* Added 5 tests to see if the new inject return same object as the usual ruby inject.
* Completed writing a new inject equivalent method for Array class using recursion.
* Added 5 tests to see if the recursion inject return same object as the usual ruby inject.
* Added one more test to deal with Coveralls not picking up recursive steps properly - (It appears to think the final return step of the method is never tested/called, this cannot be possible, since this would mean each time the method is called it will get trapped into an infinite loop!)

To Do
-----

* refactor the new methods into several smaller methods.

[![Build Status](https://travis-ci.org/makersacademy/inject-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/inject-challenge)
[![Coverage Status](https://coveralls.io/repos/makersacademy/inject-challenge/badge.png)](https://coveralls.io/r/makersacademy/inject-challenge)
