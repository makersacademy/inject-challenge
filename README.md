
Makers Academy Week2 Challenge: Inject Challenge (Rubyist Badge)
================================================================
[![Build Status](https://travis-ci.org/rjlynch/inject-challenge.svg?branch=master)](https://travis-ci.org/rjlynch/inject-challenge)

How I went about the challenge:
-------------------------------
First I played in irb to work out what exactly the inject method did.
Next I opened the Array class and added my own method.
I then wrote test conditions for various maths/string operations, which I ran on both my version of the inject method and the built in ruby version.
I managed to pass those tests by querrying a hash of procs containing the necessary opperations. I was then given a test by a coach that my initial approach couldn't pass so I rewrote my method to be more robust, by passing arguments to .method method.
Finally I refactored my method to please rubocop!