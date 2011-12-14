class CardRanks
  def initialize
  end
  
  def hand_rank(hand)
    # one pair
	if pairs?(hand)
	  
    else
      # high card
      top_card = high_card(hand)
      return ["10", "#{top_card}"]
	end
  end
  
  def compare_cards(c1,c2)
    if to_value(c1) > to_value(c2)
	  return 1
	elsif to_value(c1) < to_value(c2)
	  return 2
	else
	  return nil
	end
  end
  
  private 
  
  def pair?(hand)
    hand.each do |h|
  
  end
  
  def high_card(hand)
    value = 0
    hand.each do |h|	
	  card = h.split("")
	  card_value = to_value(card[0])
	  if card_value > value
		value = card_value
	  end
	end
	return to_face(value)
  end
  
  def to_value(card)
    value = case card
	    when "T" then 10
		when "J" then 11
		when "Q" then 12
		when "K" then 13
		when "A" then 14
        else card.to_i
	  end
	return value
  end
  
  def to_face(card)
    value = case card
	    when 10 then "T"
		when 11 then "J"
		when 12 then "Q"
		when 13 then "K"
		when 14 then "A"
        else card.to_i
	  end
	return value
  end
  
end