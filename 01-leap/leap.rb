# What's a leap year?
# These extra days occur in years which are multiples of four (with the exception of years divisible by 100 but not by 400).

def leap_year?(year)
  # years multiples of four
  if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    return true
  else
    return false
  end

end
