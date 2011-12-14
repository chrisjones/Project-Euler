max_char_count = 0

def written_out(num)
  num_string = case num
    when 0 then ""
    when 1 then "one"
    when 2 then "two"
    when 3 then "three"
    when 4 then "four"
    when 5 then "five"
    when 6 then "six"
    when 7 then "seven"
    when 8 then "eight"
    when 9 then "nine"
    when 10 then "ten"
    when 11 then "eleven"
    when 12 then "twelve"
    when 13 then "thirteen"
    when 14 then "fourteen"
    when 15 then "fifteen"
    when 16 then "sixteen"
    when 17 then "seventeen"
    when 18 then "eighteen"
    when 19 then "nineteen"
    when 20 then "twenty"
    when 30 then "thirty"
    when 40 then "forty"
    when 50 then "fifty"
    when 60 then "sixty"
    when 70 then "seventy"
    when 80 then "eighty"
    when 90 then "ninety"
  end
  return num_string    
end

def get_char_count(num)
  char_count = 0
  num_array = num.to_s.split('')
  while !num_array.empty?
    if num_array.length == 4
      char_count += written_out(num_array.shift.to_i).length
      char_count += "thousand".length
    elsif num_array.length == 3 && num_array[0] != "0"
      char_count += written_out(num_array.shift.to_i).length
      char_count += "hundred".length
      if num_array[0] != "0" && num_array[1] != "0"
        char_count += "and".length
      end
      if num_array[0] == "0" && num_array[1] != "0"
        char_count += "and".length
      end
      if num_array[0] != "0" && num_array[1] == "0"
        char_count += "and".length
      end
    elsif num_array.length == 2
      if num_array[0] != "1" 
        char_count += written_out(num_array.shift.to_i * 10).length
      else 
        char_count += written_out(num_array.join.to_i).length
        return char_count
      end
    else
      char_count += written_out(num_array.shift.to_i).length
    end
  end
  return char_count 
end

(1..1000).to_a.each do |n|
  max_char_count += get_char_count(n)
end 

puts "Total length = #{max_char_count}"