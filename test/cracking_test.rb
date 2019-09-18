require './test_helper'
require './lib/cracking'
class CrackTest < Minitest::Test
  def setup
    @crack = Cracking.new
  end

  def test_it_exists
    assert_instance_of Cracking, @crack
  end

  def test_crack_message
    assert_equal ['08304', 'hello world end'], @crack.message("vjqtbeaweqihssi", "291018")
  end
end
