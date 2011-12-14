#!C:\ruby\bin\ruby

STDOUT.sync = true

ancestor = 0
index = 1
fibonacci = []
sum = 0

while index < 4000000
  print "."
  f = ancestor + index
  ancestor = index
  index = f
  if index.modulo(2) == 0
    sum += index
  end
  fibonacci.push(index)
end

puts "sum: " + sum.to_s