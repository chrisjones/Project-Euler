solved = false
index = 1
s = ""
counter = 0
pattern = 3*3*3*3*3*3*3

while not solved 
  s += index.to_s
  counter = s.scan(/#{pattern}/).size
  if counter == pattern
    solved = true
  end
  if not solved
    index += 1
	counter = 0
  end
end

puts "rindex: " + (s.rindex("#{pattern}") + 1).to_s

length = s.length
minus50 = length - 50
substring = s[minus50..length]
puts "#{s.length}: #{pattern}"
puts "s: #{substring}"