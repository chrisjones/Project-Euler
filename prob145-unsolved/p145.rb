#!/usr/bin/ruby

def odd_digits?(num)
  all_odd = true
  num_string = num.to_s.split('')
  num_string.each do |n|
    if n.to_i.modulo(2) == 0
      all_odd = false
      break
    end
  end
  return all_odd
end

def odd?(num)
  num.modulo(2) == 1 ? return true : return false
end

count = 0
start = 1
start_time = Time.now
until start >= 10000000
  if start.modulo(10) == 0
    start += 1
    next
  end
  rstart = start.to_s.reverse.to_i  
  if (odd?(start) && odd?(rstart)) || (!odd?(start) && !odd?(rstart))
    start += 1
    next
  end
  total = start + rstart
  if odd_digits?(total)
    #puts "start #{start}, rstart #{rstart}, total #{total}"
    count += 1
  end
  start += 1
end
finish_time = Time.now
puts "Number of reversible numbers: #{count}"
puts "#{finish_time - start_time}s"

#finishing in 80s