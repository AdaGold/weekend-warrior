#take a year and report if it is a leap year
def leap_year?(year)
  if year % 400 == 0 || year % 100 != 0 && year % 4 == 0
    return true
  else
    return false
  end
end
