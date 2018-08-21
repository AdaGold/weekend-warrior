# Leap
Write a program that will take a year and report if it is a leap year. # So 2000 and 1996 were leap years ( it will return true or false).

The tricky thing here is that a leap year in the Gregorian calendar occurs:

```plain
on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400 # only needed if divisible by 100
```

For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
year, but 2000 is.

## Background
For a delightful, four minute explanation of the whole leap year
phenomenon, go watch [this youtube video](http://www.youtube.com/watch?v=xX96xng7sAE)

## Source
[JavaRanch Cattle Drive, exercise 3](http://www.javaranch.com/leap.jsp)


Method is leap_year?

evenly divisible --- check if there % (modulo ) check if result from ath
