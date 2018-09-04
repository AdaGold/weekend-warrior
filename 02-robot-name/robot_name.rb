class Robot
  #ALPHA-CHARS = [*"A".."Z"]
  #DIGIT_CHARS = [*0..9]
  @@robot = []
  attr_reader :name

  def initialize
    create_name
    # @name = ("A".."Z").to_a.sample(2)
    # j = rand(100..999).to_s
    # @name << j
    # @name = @name.join
    #chars_array = ALPHA-CHARS.sample(2) + DIGIT_CHARS.sample(3)
    # @name = chars_array.join
  end

  def create_name
    @name = ("A".."Z").to_a.sample(2)
    j = rand(100..999).to_s
    @name << j
    @name = @name.join
    return @name
  end

  def reset
    create_name
  end
end
