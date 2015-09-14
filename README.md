Inject Challenge (Rubyist Badge)
================

### blog post

http://bat020.github.io/blocks-procs-lambdas/

### spec files

**injekt_spec.rb** contains 45 tests of `Array#injekt` checking various combinations of blocks and arguments. It's organised to run through them with a similar logic to the actual method.

**inject_spec.rb** contains exactly the same 45 tests but with `Array#inject` rather than the rewritten version. This demonstrates that `injekt` and `inject` do the same thing, return the same errors etc.

### lib files

**injekt.rb** contains the code for the `injekt` method. There are two solutions, an iterative one and a recursive one. Just comment out or uncomment the relevant lines of code to switch between them. 

[![Build Status](https://travis-ci.org/makersacademy/inject-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/inject-challenge)
[![Coverage Status](https://coveralls.io/repos/makersacademy/inject-challenge/badge.png)](https://coveralls.io/r/makersacademy/inject-challenge)
