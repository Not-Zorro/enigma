require 'pry'
# class Enigma
#   def encrypt(message, key, date = Time.now.strftime("%m%d%y"))
#     date, key = key, rand.to_s[2..6] if key.length != 5
#     {
#       encryption: ,
#       key: key,
#       date: date
#     }
#   end
# end

#shift = chars.at(chars.index('a') + (0 % 27))
#shift = chars['a'.ord - 97 + (0 % 27)]
chars = ('a'..'z').to_a << ' '
@shift = [6, 5, 102, 57]
"hello I'm david.".downcase.chars.map do |character|
  letter_location = (character.ord - 97 + @shift[0]) % 27
  letter_location = (26 + @shift[0]) % 27 if character == ' '
  value = chars[letter_location]
  value = character if !chars.include?(character)
  @shift.rotate!
  value
end.join

chars = ('a'..'z').to_a << ' '
@shift = [6, 5, 102, 57]
"njfouec'seydany.".downcase.chars.map do |character|
  letter_location = (character.ord - 97 - @shift[0]) % 27
  letter_location = (26 - @shift[0]) % 27 if character == ' '
  value = chars[letter_location]
  value = character if !chars.include?(character)
  @shift.rotate!
  value
end.join

# @shift = [2, 3, 4, 5]
# "hello".downcase.chars.map do |character|
#   letter_location = (character.ord - 97 - @shift[0])
#   value = chars[letter_location]
#   @shift.rotate!
#   value
# end.join

# @shift = [2, 3, 4, 5]
# "jhpqq".downcase.chars.map do |character|
#   letter_location = (character.ord - 97 - @shift[0])
#   value = chars[letter_location]
#   @shift.rotate!
#   value
# end.join
#
# @shift = [26, 25, 27, 28]
# "igoppbl'nbgewkg.".downcase.chars.map do |character|
#   letter_location = character.ord - 97 + (@shift[0] % 27)
#   letter_location = (@shift[0] % 27) - 1 if character == ' '
#   value = chars[letter_location]
#   value = character if !chars.include?(character)
#   @shift.rotate!
#   value
# end.join
