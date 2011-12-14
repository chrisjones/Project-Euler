#!/usr/bin/ruby

def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

f = fact(100)
puts "factorial = " + f.to_s

f_s = f.to_s
f_a = f_s.split("")

sum = 0
f_a.each do |fl|
  sum += fl.to_i
end

puts "sum: " + sum.to_s