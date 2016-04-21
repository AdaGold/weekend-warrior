gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'roman_reverter'

class RomanReverterTest < Minitest::Test
  def test_revert_I
    assert_equal 1, Roman.reverter("I")
  end

  def test_revert_V
    skip
    assert_equal 5, Roman.reverter("V")
  end

  def test_revert_X
    skip
    assert_equal 10, Roman.reverter("X")
  end

  def test_revert_L
    skip
    assert_equal 50, Roman.reverter("L")
  end

  def test_revert_C
    skip
    assert_equal 100, Roman.reverter("C")
  end

  def test_revert_D
    skip
    assert_equal 500, Roman.reverter("D")
  end

  def test_revert_M
    skip
    assert_equal 1000, Roman.reverter("M")
  end

  def test_symbol_pair
    skip
    assert_equal 2, Roman.reverter("II")
  end

  def test_symbol_string
    skip
    assert_equal 30, Roman.reverter("XXX")
  end

  def test_mixed_symbol_string
    skip
    assert_equal 17, Roman.reverter("XVII")
  end

  def test_two_hundred_and_twenty_two
    skip
    assert_equal 222, Roman.reverter("CCXXII")
  end

  def test_first_subtracted_value
    skip
    assert_equal 4, Roman.reverter("IV")
  end

  def test_another_subtracted_value
    skip
    assert_equal 9, Roman.reverter("IX")
  end

  def test_nineteen
    skip
    assert_equal 19, Roman.reverter("IXX")
  end

  def test_forty
    skip
    assert_equal 40, Roman.reverter("XL")
  end

  def test_five_hundred_and_seventy_six
    skip
    assert_equal 576, Roman.reverter("DLXXVI")
  end

  def test_four_thousand_nine_hundred_and_ninety_nine
    skip
    assert_equal 4999, Roman.reverter("MMMMCMXCIX")
  end
end
