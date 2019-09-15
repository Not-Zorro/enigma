require './lib/encryption'
class Decryption < Encryption

  def message(message, key, date)
    @shift = final_shift(key, date)
    message.chars.map do |character|
      letter_location = (character.ord - 97 - @shift[0]) % 27
      letter_location = (26 - @shift[0]) % 27 if character == ' '
      value = @alphabet[letter_location]
      value = character if !@alphabet.include?(character)
      @shift.rotate!
      value
    end.join
  end
end
