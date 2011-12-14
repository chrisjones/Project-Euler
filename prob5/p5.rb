#!c:\ruby\bin\ruby

STDOUT.sync = true

num = 1
divider = 20

def zero_modulo(num, divider)
  if num.modulo(divider) != 0
    return false
  else 
    if divider == 3
	  return true
    else
	  zero_modulo(num, divider-1)
	end
  end
end

start_time = Time.now
until zero_modulo(num, divider)
  num += 1
end
end_time = Time.now

puts "\nnum: " + num.to_s
puts "Solved in: #{end_time - start_time} seconds"
