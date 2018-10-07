require("minitest/autorun")
require("minitest/rg")
require_relative("../testing_task_2")

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("clubs",2)
    @card2 = Card.new("spades",4)
    @card3 = Card.new("hearts",1)
    @card4 = Card.new("diamonds",8)
  end

  def test_suit()
    expected = "clubs"
    actual = @card1.suit()
    assert_equal(expected,actual)
  end

end
