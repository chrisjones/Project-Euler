require 'find_primes'

def find_factors(start)
  try = Math.sqrt(start).ceil
  primes = FindPrimes.new(try)
  primes.xp.reverse!
  found = false
  while found == false
    possible_factor = primes.xp.shift
    if start.modulo(possible_factor) == 0 
        puts "\n   Largest prime factor: #{possible_factor}\n\n"
        found = true
    end
  end
end

find_factors(600851475143)   