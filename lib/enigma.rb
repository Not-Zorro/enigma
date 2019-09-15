class Enigma
  def encrypt(message, key, date = Time.now.strftime("%m%d%y"))
    date, key = key, rand.to_s[2..6] if key.length != 5
    {
      encryption: message,
      key: key,
      date: date
    }
  end
end
