prev = 1
curr = 2
term = 4
fibo = prev + curr
while fibo.to_s.size <= 999
  prev = curr
  curr = fibo
  fibo = prev + curr
  term += 1
end

puts "final = " + term.to_s