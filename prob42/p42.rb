#!/usr/bin/ruby

def find_char_value(c)
  case c.upcase
  when "A" then 1
  when "B" then 2
  when "C" then 3
  when "D" then 4
  when "E" then 5
  when "F" then 6
  when "G" then 7
  when "H" then 8
  when "I" then 9
  when "J" then 10
  when "K" then 11
  when "L" then 12
  when "M" then 13
  when "N" then 14
  when "O" then 15
  when "P" then 16
  when "Q" then 17
  when "R" then 18
  when "S" then 19
  when "T" then 20
  when "U" then 21
  when "V" then 22
  when "W" then 23
  when "X" then 24
  when "Y" then 25
  when "Z" then 26
  end
end

triangle_words = 0
triangles = []
start = 1
until start == 200
  triangle = (start * (start+1))/2
  triangles.push(triangle)
  start += 1
end

f = File.open("words.txt", "r") 
line = f.readline
words = line.gsub("\"","").split(',')

words.each do |w|
  sum = 0
  w.each_char { |c| sum += find_char_value(c) }
  if triangles.include?(sum)
    triangle_words += 1
  end
end

puts "Triangel words: " + triangle_words.to_s