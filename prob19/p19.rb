#!/usr/bin/ruby

month = 1
year = 1901
first_sundays = 0
until year == 2001 && month == 1
  d = Time.local(year,month,1)
  if d.wday == 0
    first_sundays += 1
  end
  month += 1
  if month == 13
    month = 1
    year += 1
  end
end

puts "Sundays fell on the first of the month between Jan 1, 1901 and Dec 31, 2000 #{first_sundays} times."