
def leap_year?(year)

  if year % 4 == 0 && year % 400 == 0 && year % 100 == 0
    return true
  elsif year % 4 == 0 && year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  end
end

puts leap_year?(2000)
