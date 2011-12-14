def is_palindrome?(num)
  pd = num.to_s.reverse.to_i
  if pd == num
    return true
  else
    return false
  end
end

def is_lychrel?(num, count)
  l = num.to_s.reverse.to_i
  sum = num + l
  if is_palindrome?(sum)
    return false
  elsif count < 50
    count += 1
    is_lychrel?(sum, count)
  else
    return true
  end
end

count = 0
start_test_num = 1
while start_test_num < 10000
  if is_lychrel?(start_test_num, 1)
    count += 1
  end
  start_test_num += 1
end
puts "Found #{count} lychrel numbers."