# inject_method

# Inject is a fold - a concept from functional programming; a way of abstracting over recursion.

# You have an enumerable

# You want to iteratively build something

# Each source doesn't map exactly to one target.

# Example, if you have a list of string snad you want to map them to each of the uppercase letters of the array, unique, you can just use a map.

# You can build anything you want from inject, as long as you are  iteratively doing it with each item of the collection.

# Map is a special case of inject - map, reject, select, detect etc.

# Inject is a core building block.

# Inject is a way of expressing recursion.

# -----

# We are summing an array, we take an array as an argument

# We split out the first element from the rest, then we look at what the rest of the array looks like.

# If there's nothing left,
# then we know that we just have that element.

# If there is more, then we want to take the element that we have and add it to the sum of the rest of that array.

# The simplest fundamental recursion example.

# You start with sum with an array of 5 elements and as you go through each pass you simplify it down to just a bunch of addition. You build up all these intermediate results and wait for that last base case to get hit and then you return your way back up the stack with the total numbers

def sum(array)
  element, *rest = array    sum([1,2,3,4,5,])
  case rest                 1 + sum([2,3,4,5])
  when []                   1+2+sum([3,4,5])
    element                 1+2+3+sum([4+5])
  else                      1+2+3+4+sum([5])
    element + sum(rest)     1+2+3+4+5
  end
end

-----

# You can implement inject using recursion or you can implement inject using a loop.

def sum(array)
  array.inject do |accumulator, element|
  accumulator + element
  end
end

def smallest(array)
  array.inject do |accumulator, element|
  if element< accumulator
    element
  else
      accumulator
    end
  end
end



