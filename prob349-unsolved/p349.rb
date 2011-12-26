#taking too long to build 2d array
#moves is 10 ^ 18 and keep running into boundary of 2d array

SIZE = 10000
MOVES = 200000
board = Array.new(SIZE) { Array.new(SIZE) { :white } }
i, j = SIZE / 2, SIZE / 2
direction = :up

for m in 1..MOVES do
  if board[i][j] == :white
    board[i][j] = :black
    case direction
    when :left then direction = :up
    when :up then direction = :right
    when :right then direction = :down
    when :down then direction = :left
    end
  else 
    board[i][j] = :white
    case direction
    when :left then direction = :down
    when :up then direction = :left
    when :right then direction = :up
    when :down then direction = :right
    end
  end
  case direction
  when :up then i -= 1
  when :right then j += 1
  when :down then i += 1
  when :left then j -= 1
  end
end  

count_black_squares = 0
for x in 0..SIZE-1 do
  for y in 0..SIZE-1 do
    if board[x][y] == :black
      count_black_squares += 1
    end
  end
end

puts "Size is #{SIZE}"
puts "Number of moves is #{MOVES}"
puts "Number of black squares is #{count_black_squares}\n\n" 