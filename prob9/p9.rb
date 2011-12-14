#!c:\ruby\bin\ruby

STDOUT.sync = true

a=1
b=1
c=1

while a < 1000
  while b < 1000 
    c = 1000 - (a + b)
	if (a*a + b*b == c*c)
	  product = a*b*c
	  puts "a = #{a.to_s}, b= #{b.to_s}, c = #{c.to_s}"
	  puts "\nproduct: " + product.to_s
	  exit
	end
	b += 1
  end
  a += 1
  b = 1   
end

puts "\nNo product found."