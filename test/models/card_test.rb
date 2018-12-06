require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "should not save card without name" do
    card = Card.new
    assert_not card.save, "saved card without name"
  end
end
