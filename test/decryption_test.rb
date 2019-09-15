require './test_helper'
require './lib/decryption'
class DecryptionTest < Minitest::Test
  def setup
    @decryption = Decryption.new
  end

  def test_it_exists
    assert_instance_of Decryption, @decryption
  end

  def test_decrypt_message
    assert_equal "hello world", @decryption.message("keder ohulw", "02715", "040895")
  end
end
