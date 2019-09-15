require './lib/enigma'

@enigma = Enigma.new
@file = File.open('./message.txt', 'r')

def write
  encryption_hash = @enigma.encrypt(@file.read.chomp)
  new_file = File.open('./encrypted.txt', 'w')
  new_file.write(encryption_hash[:encryption])

  print "Created 'encrypted.txt' "
  print "with the key #{encryption_hash[:key]} and date "
  puts encryption_hash[:date]
end
write
