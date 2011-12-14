require "card_ranks"

#line = "8C TS KC 9H 4S 7D 2S 5D 3S AC"
line = "5C AD 5D AC 9C 7C 5H 8D TD KS"
hands = line.split(" ")

p1_hand = hands[0..4]
p2_hand = hands[5..9]

game = CardRanks.new
p1_hand_rank = game.hand_rank(p1_hand)
p2_hand_rank = game.hand_rank(p2_hand)

if p1_hand_rank[0] >  p2_hand_rank[0]
  puts "Player 1 wins"
elsif p1_hand_rank[0] <  p2_hand_rank[0]
  puts "Player 2 wins" 
else
  winner = game.compare_cards(p1_hand_rank[1], p2_hand_rank[1])
  if winner
    puts "Player #{winner} wins this hand."
  else
    puts "This hand was a tie."
  end
end