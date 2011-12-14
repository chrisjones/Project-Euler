#!/usr/bin/ruby

index = 1
sum_of_square = 0
sum = 0

while index <= 100
  sum_of_square += index * index
  sum += index
  index += 1
end

square_of_sums = sum * sum
diff = square_of_sums - sum_of_square

puts "sum of squares: " + sum_of_square.to_s
puts "square of sums: " + square_of_sums.to_s
puts "diff:" + diff.to_s