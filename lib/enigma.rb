require './lib/cracking'
class Enigma < Cracking
  def initialize
    @message_encryption = Encryption.new
    @message_decryption = Decryption.new
    @message_crack = Cracking.new
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
    date = @date if date.length != 6
    {
      decryption: @message_decryption.message(message, key, date),
      key: key,
      date: date
    }
  end

  def crack(message, date = @date)
    date = @date if date.length != 6
    cracked_array = @message_crack.message(message, date)
    {
      decryption: cracked_array[1],
      key: cracked_array[0],
      date: date
    }
  end
end
