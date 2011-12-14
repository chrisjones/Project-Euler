def is_palindrome?(num)
  pd = num.to_s.reverse.to_i
  if pd == num
    return true
  else
    return false
  end
end

sum = 0
runner = 1
while runner < 1000000
  if is_palindrome?(runner)
    binary = runner.to_s(2).to_i
    if is_palindrome?(binary)
      sum += runner
    end
  end
  runner += 1
end

puts "Sum: #{sum}"