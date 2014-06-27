require 'minitest/autorun'
require 'minitest/pride'
require './card'

class CardTest < Minitest::Test

  def test_jack_is_10
    assert_equal 10, Card.new("J").value
  end

  def test_ace_is_10
    assert_equal 11, Card.new("A").value
  end

  def test_number_cards
    (2..10).each do |number|
      assert_equal number, Card.new(number).value
    end
  end

end
