def contain_chars?(num)
  hex = num.to_s(16).upcase
  if hex.include?("A") && hex.include?("0") && hex.include?("1")
    return true
  else
    return false
  end
end

start_test_num = 1
count = 0

while start_test_num.to_s(16).length < 17
  if contain_chars?(start_test_num)
    count += 1
  end
  start_test_num += 1
end

puts "Count: #{count}"
