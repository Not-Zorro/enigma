require './test_helper'
require './lib/generate_date'

class GenerateDateTest < Minitest::Test
  def test_gen_date
    GenerateDate.expects(:date).returns("061400")
    assert_equal "061400", GenerateDate.date
  end
end
