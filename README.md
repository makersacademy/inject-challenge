Inject Challenge
================

Summary of Inject
-------

* Inject is an Enumerable that can be used on collections and takes 4 main inputs - a block, a block and a starting point, a starting point and a symbol and a symbol on its own
* Inject uses two dummy variables - an accumulator (or memo) and an element
* The accumulator variable can represent both the starting point for an iteration or an object that will accumulate with each element (e.g. a hash). The default starting point is at index 0 of the collection. If the starting point equals the first value of the collection then accumulator can start iterating from the next element
* The element variable represents each individual element in the collection that is passed into the accumulator
* Common uses include summing a collection and manipulating between data structures e.g. hashes to multi-dimensional arrays and arrays to hashes

Status
-----

* Implemented a basic version on the array class that can handle 2 scenarios - block passed on its own and block passed with a stated starting point
* All tests passing locally
