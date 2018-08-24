#
# Write a program that manages robot factory settings.
#
# When robots come off the factory floor,
# they have no name.
#
# The first time you boot them up, a random name is generated, such as
# _RX837_ or _BC811_.
#The names are comprised of two uppercase letters and
# a three digit number.
#
# Every once in a while we need to reset a robot to its factory settings,
# which means that their name gets wiped.
#The next time you ask, it will respond with a new name.

# Generate random name with two uppecase letters and
# a three digit number

#
# name = rand_let + rand_let + rand_num + rand_num + rand_num
# p name

class Robot

  attr_reader :name

  # Method to generate random letter
  def generate_random_letter
    return ("A".."Z").to_a.sample
  end

  # Method to generate random number
  def generate_random_number
    return rand_num = rand(1..9).to_s
  end

  # Method to generate random name
  def generate_name
    name = ""
    2.times { name += generate_random_letter }
    3.times { name += generate_random_number }
    return name
  end

  def initialize
    # Create a random name upon initialize
    @name = generate_name
  end

  # Method to reset name to new random name
  def reset
    @name = generate_name
  end
end
