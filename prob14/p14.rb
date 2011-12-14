#!/usr/bin/ruby

start_term = 1
loop_count = 1
max_loop_count = 0
max_start = 0

while start_term <= 1000000
  term = start_term
  while term != 1
    if term % 2 == 0
      term = term / 2
    else
      term = term * 3 + 1
    end
    loop_count += 1
  end
  if loop_count > max_loop_count
    max_loop_count = loop_count
    max_start = start_term
  end
  start_term += 2
  loop_count = 1
end 

puts "\nTerm = #{max_start}"
puts "No. Terms = #{max_loop_count}"