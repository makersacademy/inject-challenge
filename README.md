##Double_inject

Double_inject is an array method and acts like the inject method in Ruby.
Double_inject can have one or two arguments.
The first argument is initial value (memo). If you don't pass in an initial value, the first argument of the array will be the initial value.

[1,2,3].double_inject(3) { |memo, n| memo + 3 } => 9
[1,2,3].double_inject { |memo, n| memo + 3 } => 6
