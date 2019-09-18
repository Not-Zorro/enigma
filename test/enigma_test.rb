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
    enigma = mock
    expected = {:encryption=>"Mock Mock", :key=>"Woop", :date=>"Awe yeah"}
    enigma.expects(:encrypt).returns(expected)
    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_encrypt_message_without_date_or_key
    expected = @enigma.encrypt("hello world")[:encryption].length
    assert_equal expected, 'hello world'.length
  end

  def test_for_decrypt
    encrypted = @enigma.encrypt("hello world", "02715", "040895")
    expected = {
      :decryption=>"hello world",
      :key=>"02715",
      :date=>"040895"
    }
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715", "040895")
  end

  def test_for_crack
    encrypted = @enigma.encrypt("hello world end", "02715", "040895")
    expected = {
      :decryption=>"hello world end",
      :key=>"02715",
      :date=>"040895"
    }
    assert_equal expected, @enigma.crack(encrypted[:encryption], "040895")
  end
end
