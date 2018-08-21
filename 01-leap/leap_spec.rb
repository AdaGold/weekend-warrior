gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'leap'

# This Date class can be safely ignored.
# It prevents using the Date class' leap? method.
class Date
  def leap?
    throw "Implement this yourself instead of using Ruby's implementation."
  end

  alias_method :gregorian_leap?, :leap?
  alias_method :julian_leap?, :leap?
end

describe "Leap Year Test" do
  it "Test on 1996" do
    expect(leap_year?(1996)).must_equal true
  end

  it "Checking non leap year" do
    expect(leap_year?(1997)).wont_equal true
  end

  it "Check non leap even year" do
    expect(leap_year?(1998)).wont_equal true
  end

  it "Check century which is not a leap year" do
    expect(leap_year?(1900)).wont_equal true
  end

  it "Check fourth_century" do
    expect(leap_year?(2400)).must_equal true
  end

  it "Check Y2K" do
    expect(leap_year?(2000)).must_equal true
  end

  it "Check very long long ago" do
    expect(leap_year?(8)).must_equal true
  end
end
