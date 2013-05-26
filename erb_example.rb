require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

showcase = ERB.new  "<%= [1, 7, 9, 5, 6, 2, 4].each {|i| puts i}%>"
puts showcase.result(binding)

sorted_showcase = ERB.new  "<%= [1, 7, 9, 5, 6, 2, 4].sort.each {|i| puts i}%>"
puts sorted_showcase.result(binding)

reversed_sorted_showcase = ERB.new  "<%= [1, 7, 9, 5, 6, 2, 4].sort.reverse.each {|i| puts i}%>"
puts reversed_sorted_showcase.result(binding)