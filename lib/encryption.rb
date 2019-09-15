require './module/shiftable'
class Encryption
  include Shiftable

  def initialize
    @alphabet = ('a'..'z').to_a << ' '
  end

  def message(message, key, date)
    @shift = final_shift(key, date)
    format_message = message.downcase.chars
    altered_message = format_message.map do |character|
      letter_location = (character.ord - 97 + @shift[0]) % 27
      value = @alphabet[letter_location]
      @shift.rotate!
      value
    end
    altered_message.join
  end
end
