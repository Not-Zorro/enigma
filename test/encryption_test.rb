require './test_helper'
require './lib/encryption'

class EncryptionTest < Minitest::Test
  def setup
    @encryption = Encryption.new
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption
  end

  def test_encrypt_message
    assert_equal "kederqohulw", @encryption.message("hello world", "02715", "040895")
  end
end
