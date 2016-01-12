gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative '12days'

class TwelveDaysTest < Minitest::Test
  def test_day_one_gift
    l = "a partridge in a pear tree"
    g = Xmas.gifts(0).first
    assert_equal l, g
  end

  def test_day_two_gift
    skip
    l1 = "two turtle doves"
    l2 = "and a partridge in a pear tree"
    g1, g2 = Xmas.gifts(1)

    assert_equal l1, g1
    assert_equal l2, g2
  end

  def test_day_five_yelling_gift
    skip
    yell = Xmas.gifts(4).first
    assert_equal yell, "FIVE GOLDEN RINGS"
  end

  def test_first_verse
    skip
    v1, v2 = Xmas.verse(0).split("\n")
    assert_equal "On the first day of Christmas my true love gave to me", v1
    assert_equal "a partridge in a pear tree", v2
  end

  def test_second_verse
    skip
    v1, v2, v3 = Xmas.verse(1).split("\n")

    assert_equal v1, "On the second day of Christmas my true love gave to me"
    assert_equal v2, "two turtle doves"
    assert_equal v3, "and a partridge in a pear tree"
  end

  def test_last_verse
    skip
    last_verse = <<-SONG
On the twelfth day of Christmas my true love gave to me
twelve drummers drumming
eleven pipers piping
ten lords-a-leaping
nine ladies dancing
eight maids-a-milking
seven swans-a-swimming
six geese-a-laying
FIVE GOLDEN RINGS
four calling birds
three french hens
two turtle doves
and a partridge in a pear tree
SONG

    assert_equal last_verse.strip, Xmas.verse(11)
  end

  def test_sing_whole_song
    skip
    whole_song = File.read(File.dirname(__FILE__) + '/12days.txt')
    assert_equal whole_song.strip, Xmas.sing
  end
end
