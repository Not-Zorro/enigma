module Shiftable
  def number_shift(key)
    a = key[0..1].to_i
    b = key[1..2].to_i
    c = key[2..3].to_i
    d = key[3..4].to_i
    [a, b, c, d]
  end

  def date_shift(date)
    squared_date = (date.to_i ** 2).to_s
    a = squared_date[-4].to_i
    b = squared_date[-3].to_i
    c = squared_date[-2].to_i
    d = squared_date[-1].to_i
    [a, b, c, d]
  end

  def final_shift(key, date)
    first_shift = number_shift(key)
    second_shift = date_shift(date)
    a = first_shift[0] + second_shift[0]
    b = first_shift[1] + second_shift[1]
    c = first_shift[2] + second_shift[2]
    d = first_shift[3] + second_shift[3]
    [a, b, c, d]
  end
end
