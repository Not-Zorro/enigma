require './test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma , @enigma
  end

  def test_for_encrypt
    expected = {
     encryption: "keder ohulw",
     key: "02715",
     date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_encrypt_message_without_date
    expected = {
     encryption: "qhhaxcsd o ",
     key: "02715",
     date: "091519"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_encrypt_message_without_date_or_key
    expected = @enigma.encrypt("hello world")[:encryption].length
    assert_equal expected, 'hello world'.length
  end
end
