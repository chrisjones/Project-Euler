def get_hexagonal(n)
  result = n*((2*n)-1)
  return result
end

def is_triangle?(prod)
  runner = 2
  talley = 0
  while talley < prod
    talley = (runner * (runner + 1))/2
    runner += 1
  end
  if talley == prod
    return true
  else 
    return false
  end
end 

def is_pentagonal?(prod)
  runner = 2
  talley = 0
  while talley < prod
    talley = (runner * ((3 * runner) - 1))/2
    runner += 1
  end
  if talley == prod
    return true
  else 
    return false
  end
end


start_testnum = 144
found = false
while not found
  prod = get_hexagonal(start_testnum)
  if is_triangle?(prod) && is_pentagonal?(prod)
    found = true
    puts "#{prod}"
  else
    start_testnum += 1
    puts start_testnum.to_s
  end
end
