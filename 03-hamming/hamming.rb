module Hamming

  def self.compute(arg_1, arg_2)
    if arg_1 == nil || arg_2 == nil
      raise ArgumentError
    end

    count = 0
    if arg_1.length == arg_2.length

      arg_1.chars.zip(arg_2.chars).each do |row|
        if row[0] != row[1]
          count += 1
        end
      end
      return count
    else
      raise ArgumentError
    end
  end
end
