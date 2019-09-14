require './test_helper'
require './module/shiftable'

class ShiftableTest < Minitest::Test
  include Shiftable
  def test_number_shift
    key = '12345'
    assert_equal [12, 23, 34, 45], number_shift(key)
  end
end
