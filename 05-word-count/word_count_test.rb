gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'word_count'

class WordCount < Minitest::Test
  def test_counts_one_word
    expectedCounts = { "word" => 1 }
    assert_equal expectedCounts, words('word')
  end

  def test_counts_one_of_each
    skip
    expectedCounts = { "one" => 1, "of" => 1, "each" => 1 }
    assert_equal expectedCounts, words('one of each')
  end

  def test_counts_multiple_occurrences
    skip
    expectedCounts = { "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1 }
    assert_equal expectedCounts, words('one fish two fish red fish blue fish')
  end

  def test_includes_punctuation
    skip
    expectedCounts = { "car" => 1, ":" => 2, "carpet" => 1, "as" => 1, "java" => 1, 'javascript!!&@$%^&' => 1 }
    assert_equal expectedCounts, words('car : carpet as java : javascript!!&@$%^&')
  end

  def test_includes_numbers
    skip
    expectedCounts = { "testing" => 2, '1' => 1, '2' => 1 }
    assert_equal expectedCounts, words('testing 1 2 testing')
  end

  def test_respects_case
    skip
    expectedCounts = { "go" => 1, "Go" => 1, "GO" => 1 }
    assert_equal expectedCounts, words('go Go GO')
  end

  def test_counts_properly_international_characters
    skip
    expectedCounts = { '¡Hola!' => 1, '¿Qué' => 1, 'tal?' => 1, 'Привет!' => 1 }
    assert_equal expectedCounts, words('¡Hola! ¿Qué tal? Привет!')
  end

  def test_counts_multiline
    skip
    expectedCounts = { "hello" => 1, "world" => 1 }
    assert_equal expectedCounts, words("hello\nworld")
  end

  def test_counts_tabs
    skip
    expectedCounts = { "hello" => 1, "world" => 1 }
    assert_equal expectedCounts, words("hello\tworld")
  end

  def test_counts_multiple_spaces_as_one
    skip
    expectedCounts = { "hello" => 1, "world" => 1 }
    assert_equal expectedCounts, words('hello  world')
  end

  def test_does_not_count_leading_or_trailing_whitespace
    skip
    expectedCounts = { "Introductory" => 1, "Course" => 1 }
    assert_equal expectedCounts, words("\t\tIntroductory\n\n\n\nCourse      ")
  end

  def test_handles_words_that_are_also_method_names
    skip
    expectedCounts = { "to_s" => 1, "gsub" => 1, "reverse" => 1, "String" => 1, "methods:" => 1 }
    assert_equal expectedCounts, words('String methods: to_s gsub reverse')
  end

end
