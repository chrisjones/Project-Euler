#!/usr/bin/ruby

sum = 0
index_sum = 0
index = 1

while index < 1000
  index_sum += index
  if index.modulo(3) == 0 || index.modulo(5) == 0 
    sum += index
  end
  index += 1
end

puts "Index: " + index.to_s
puts "Sum: " + sum.to_s
puts "Index Sum: " + index_sum.to_s
