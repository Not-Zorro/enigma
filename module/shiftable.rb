module Shiftable
  def number_shift(key)
    a = key[0..1].to_i
    b = key[1..2].to_i
    c = key[2..3].to_i
    d = key[3..4].to_i
    [a, b, c, d]
  end

  def date_shift(date)
    rooted_date = (date.to_i ** 2).to_s
    a = rooted_date[-4].to_i
    b = rooted_date[-3].to_i
    c = rooted_date[-2].to_i
    d = rooted_date[-1].to_i
    [a, b, c, d]
  end
end
