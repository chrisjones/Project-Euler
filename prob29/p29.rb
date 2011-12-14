start = 2
finish = 100

combo = []

for a in start..finish do
  for b in start..finish do
    combo << a ** b
  end 
end

unique = combo.uniq
puts "count = #{combo.size}"
puts "unique = #{unique.size}"