require './lib/decryption'
class Enigma < Decryption
  def initialize
    @message_encryption = Encryption.new
    @message_decryption = Decryption.new
  end

  def encrypt(message, key = '', date = Time.now.strftime("%d%m%y"))
    date, key = key, rand.to_s[2..6] if key.length != 5
    date = Time.now.strftime("%d%m%y") if date.length != 6
    {
      encryption: @message_encryption.message(message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
    {
      decryption: @message_decryption.message(message, key, date),
      key: key,
      date: date
    }
  end
end
