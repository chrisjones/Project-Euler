require 'find_primes.rb'

#find circular primes under 1000000
#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

circular = []
primes_list = FindPrimes.new(1000000)

primes_list.xp.each do |p|
  arrayed = p.to_s.split(//)
  if p < 10
    circular << p
  else
    results = []
    loops = arrayed.length-1
    while loops != 0 and !results.include?(false) and !arrayed.include?(0) 
      digit = arrayed.shift
      arrayed << digit
      number = arrayed.to_s.to_i
      primes_list.xp.include?(number) ? results << true : results << false
      loops -= 1
    end
    if !results.include?(false)
      circular << p
    end
  end
end

puts circular.length