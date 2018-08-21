# leap year if year entered is evenly divisible by 4 and not 100 or if year is 
# evenly divisible by 400
def leap_year?(year) 
  # returns true if leap year, otherwise returns false
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

