gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'hello_world'

class HelloWorldTest < Minitest::Test
  def test_no_name
    assert_equal 'Hello, World!', hello_world, <<-MSG
    When given no name, it should greet the world!
    MSG
  end

  def test_sample_name
    assert_equal 'Hello, Alice!', hello_world('Alice'), <<-MSG
    When given "Alice" it should greet Alice!
    MSG
  end

  def test_other_sample_name
    assert_equal 'Hello, Bob!', hello_world('Bob'), <<-MSG
    When given "Bob" it should greet Bob!
    MSG
  end

  def test_empty_string_name
    assert_equal 'Hello, World!', hello_world(''), <<-MSG
    When given an empty string it should greet the world!
    MSG
  end
end
