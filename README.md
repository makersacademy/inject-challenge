Inject Challenge
================

The fourth program I built during my programming bootcamp at [Makers Academy](http://www.makersacademy.com/). 

Objective
----------

The objective was to Rewrite the inject method. To approach this challenge, I researched the inject method on [Ruby Docs](http://ruby-doc.org/core-2.2.2/Enumerable.html#method-i-inject) and then experimented with it in IRB (Interactive Ruby Shell) until I was clear on how it functions. This put me in a good place to write my own version of the method.

How to use
--------------

* Fork and clone this repo
* Navigate to the cloned directory in terminal
* Fire up IRB: `$ irb`
* Require the files: `> require ‘./lib/my_array.rb’`
* Run `bundle` and then `rspec` to watch the tests pass
* Call the `my_inject` method, for example:

```
[1, 2, 3, 4].my_inject { |mem, el| mem + el }
[1, 2, 3, 4].my_inject(10) { |mem, el| mem - el }
[1, 2, 3, 4].my_inject :*
[1.0, 2.0, 3.0, 4.0].my_inject(10, :/)
```

Planned upgrades
----------------

* test coverage badge + hound passing build
