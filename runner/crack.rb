require './lib/enigma'
require 'pry'
@enigma = Enigma.new
@file = File.open(ARGV[0], 'r')

def write
  ARGV[2] = '' if ARGV[2] == nil
  crack_hash = @enigma.crack(@file.read.chomp, ARGV[2])
  new_file = File.open(ARGV[1], 'w')
  new_file.write(crack_hash[:decryption])

  print "Created '#{ARGV[1]}' "
  print "with the key #{crack_hash[:key]} and date "
  puts crack_hash[:date]
end
write
