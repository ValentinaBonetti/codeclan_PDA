### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
# path needs folder: './card'
class CardGame


  def checkforAce(card)
    if card.value = 1 # this needs to be == , otherwise always true
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)
  #"def" instead of "dif", comma missing between card1 and card2
  if card1.value > card2.value
    return card.name
    # card object not defined
    # card class method name not defined
  else
    # what if they are equal? equal condition missing
    card2
    # return keyword missing. It would work anyway, but better with return
  end
  # bad indentation of if statement
end
# bad indentation of method end
end
# this last end closes the class... it should be deleted

def self.cards_total(cards)
  total
  # total should be set to an initial value (0)
  for card in cards
    total += card.value
    return "You have a total of" + total
    # this statement returns the value of the first card and
    # ends the for loop after the first iteration.
    # It needs to be placed outside the for loop, after the following end.
  end
end

# the end of the class should be placed here, instead of line 37


```
