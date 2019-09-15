require './lib/encryption'

class Enigma < Encryption
  def initialize
    @message_encryption = Encryption.new
  end

  def encrypt(message, key = '', date = Time.now.strftime("%m%d%y"))
    date, key = key, rand.to_s[2..6] if key.length != 5
    date = Time.now.strftime("%m%d%y") if date.length != 6
    {
      encryption: @message_encryption.message(message, key, date),
      key: key,
      date: date
    }
  end
end
