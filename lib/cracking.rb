require './lib/decryption'

class Cracking < Decryption

  def message(message, date)
    cracked = nil
    @shift = nil
    shift_copy = nil
    loop do
      num = rand(100000).to_s.rjust(5, "0")
      shift_copy = final_shift(num, date)
      @shift = final_shift(num, date)
      cracked = message.chars.map do |character|
        letter_location = (character.ord - 97 - @shift[0]) % 27
        letter_location = (26 - @shift[0]) % 27 if character == ' '
        value = @alphabet[letter_location]
        value = character if !@alphabet.include?(character)
        @shift.rotate!
        value
      end.join
      break if cracked[-4..-1] == ' end'
    end
    [find_key(shift_copy, date), cracked]
  end

  def find_key(array, date)
    date_nums = date_shift(date)
    a = (array[0] - date_nums[0]).to_s
    b = (array[1] - date_nums[1]).to_s
    c = (array[2] - date_nums[2]).to_s
    d = (array[3] - date_nums[3]).to_s
    key = a[0..-1] + b[-1] + c[-1] + d[-1]
    key = '0' + a[0..-1] + b[-1] + c[-1] + d[-1] if a.length != 2
    key
  end
end
