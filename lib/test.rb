# Example 1
[1, 2, 3, 4].inject(0) do |result, element|  # => [1, 2, 3, 4]
  result                                         # => 1, 2, 4, 7
  element                                        # => 1, 2, 3, 4
  s = result + element                           # => 2, 4, 7, 11
  s                                              # => 2, 4, 7, 11
end                                              # => 11





# Example 2
# hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject({}) do |result, element|
#   result[element.first] = element.last
#   result
# end
