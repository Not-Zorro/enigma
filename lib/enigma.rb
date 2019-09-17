require './lib/decryption'
class Enigma < Decryption
  def initialize
    @message_encryption = Encryption.new
    @message_decryption = Decryption.new
    @number = GenerateNumber.number
    @date = GenerateDate.date
  end

  def encrypt(message, key = @number, date = @date)
    date, key = key, @number if key.length != 5
    date = @date if date.length != 6
    {
      encryption: @message_encryption.message(message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = @date)
    {
      decryption: @message_decryption.message(message, key, date),
      key: key,
      date: date
    }
  end
end
