### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card)
    if card.value == 1
      return true
    else
      return false
    end
  end

  def highest_card(card1,card2)
    # bridge suit ranking low to high is alphabetical order:
    # low_to_high_suit_rank = ["clubs","diamonds","hearts","spades"]
    cards = [card1,card2]
    cards.sort_by! {|card| [card.value, card.suit]}
    cards.reverse!
    return cards[0]
  end


  def self.cards_total(cards)
    total = 0
    for card in cards
      total += card.value
    end
    return "You have a total of " + total.to_s
  end

end
