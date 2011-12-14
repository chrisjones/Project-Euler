#!/usr/bin/ruby

a = 100
b = 100
product = 0

while a < 1000
  while b < 1000
    temp_product = a * b
    reverse = temp_product.to_s.reverse
    if temp_product.to_s == reverse
      if temp_product > product
        product = temp_product
        factorA = a
        factorB = b
      end
    end
    b += 1
  end
  a += 1
  b = 10
end

puts "#{product} = #{factorA} X #{factorB}." 