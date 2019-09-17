require './test_helper'
require './lib/generate_number'

class GenerateNumberTest < Minitest::Test
  def test_gen_date
    GenerateNumber.expects(:number).returns("12345")
    assert_equal "12345", GenerateNumber.number
  end
end
