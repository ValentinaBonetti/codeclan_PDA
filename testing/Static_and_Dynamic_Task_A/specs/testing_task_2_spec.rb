require("minitest/autorun")
require("minitest/rg")
require_relative("../testing_task_2")

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("spades",2)
    @card2 = Card.new("clubs",2)
    @card3 = Card.new("hearts",1)
    @card4 = Card.new("diamonds",8)
    @cards = [@card1,@card2,@card3,@card4]
    @cardgame = CardGame.new()
  end

  # check Card class first:

  def test_suit()
    expected = "spades"
    actual = @card1.suit()
    assert_equal(expected,actual)
  end

  def test_value()
    expected = 2
    actual = @card1.value()
    assert_equal(expected,actual)
  end

  # tests for CardGame

  def test_checkforAce_true()
    expected = true
    actual = @cardgame.checkforAce(@card3)
    assert_equal(expected,actual)
  end

  def test_checkforAce_false()
    expected = false
    actual = @cardgame.checkforAce(@card1)
    assert_equal(expected,actual)
  end

  def test_highest_card()
    expected = @card1
    actual = @cardgame.highest_card(@card1,@card3)
    assert_equal(expected,actual)
  end

  # This ranking is used in the game of bridge:
  # spades (highest), hearts, diamonds, clubs (lowest)
  def test_highest_card_samevalue()
    expected = @card1
    actual = @cardgame.highest_card(@card1,@card2)
    assert_equal(expected,actual)
  end

  def test_highest_card_valueMoreImportantThanSuit()
    expected = @card2
    actual = @cardgame.highest_card(@card2,@card3)
    assert_equal(expected,actual)
  end

  def test_cards_total()
    expected = "You have a total of 13"
    actual = CardGame.cards_total(@cards)
    assert_equal(expected,actual)
  end

end
