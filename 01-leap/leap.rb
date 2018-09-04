  def leap_year?(year)
    if year % 4 == 0 && year % 100 != 0
      x = true
    else
      x = false
    end

    if year % 400 == 0
      x = true
    end

    return x
end
