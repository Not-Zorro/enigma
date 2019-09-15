require './module/shiftable'
class Encryption
  include Shiftable

  def initialize
    @alphabet = ('a'..'z').to_a << ' '
  end

  def message(message, key, date)
    @shift = final_shift(key, date)
  end
end
