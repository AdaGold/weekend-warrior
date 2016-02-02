gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'leap'

class Date
  def leap?
    throw "Implement this yourself instead of using Ruby's implementation."
  end

  alias_method :gregorian_leap?, :leap?
  alias_method :julian_leap?, :leap?
end

class YearTest < Minitest::Test
  def test_leap_year
    assert leap_year?(1996), 'Yes, 1996 is a leap year'
  end

  def test_non_leap_year
    skip
    refute leap_year?(1997), 'No, 1997 is not a leap year'
  end

  def test_non_leap_even_year
    skip
    refute leap_year?(1998), 'No, 1998 is not a leap year'
  end

  def test_century
    skip
    refute leap_year?(1900), 'No, 1900 is not a leap year'
  end

  def test_fourth_century
    skip
    assert leap_year?(2400), 'Yes, 2400 is a leap year'
  end

  def test_y2k
    skip
    assert leap_year?(2000), 'Yes, 2000 is a leap year'
  end
  def test_long_long_ago
    skip
    assert leap_year?(8), 'Yes, 8 is a leap year'
  end
end
