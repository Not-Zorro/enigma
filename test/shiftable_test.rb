require './test_helper'
require './module/shiftable'

class ShiftableTest < Minitest::Test
  include Shiftable
  def test_number_shift
    key = '12345'
    assert_equal [12, 23, 34, 45], number_shift(key)
  end

  def test_date_shift
    date = '091319'
    assert_equal [9, 7, 6, 1], date_shift(date)
  end
end
