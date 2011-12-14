def is_prime?(number)
  if number.remainder(2) == 0 || number.remainder(3) == 0 || number.remainder(5) == 0 || number.remainder(7) == 0
    return false
	exit
  else
    runner = number - 1
    while runner > 1
	  if number.remainder(runner) == 0
	    return false
	  else
        runner -= 1
	  end
    end
	return true
	exit
  end
  return false
end


index = 8
counter = 4

while counter < 10001
  if is_prime?(index)
    counter += 1
  end
  index += 1
end

puts (index-1).to_s

