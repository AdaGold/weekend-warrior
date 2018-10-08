class Complement
  def self.of_dna(nucleo)
    if nucleo == "G"
      nucleo = "C"
    elsif
      nucleo == "C"
      nucleo = "G"
    elsif
      nucleo == "T"
      nucleo = "A"
    elsif
      nucleo == "A"
      nucleo = "U"
    else
      nucleo.length.times do |i|
        if nucleo[i] != "G" || nucleo[i] != "C" || nucleo[i] != "T" || nucleo[i] != "A"
          raise ArgumentError
        end
      end
    end
    return nucleo
  end

  def self.of_rna(nucleo)
    nucleo.length.times do |i|

      if nucleo[i] == "G"
        nucleo[i] = "C"
      elsif
        nucleo[i] == "C"
        nucleo[i] = "G"
      elsif
        nucleo[i] == "U"
        nucleo[i] = "A"
      elsif
        nucleo[i] == "A"
        nucleo[i] = "T"
      else
        nucleo.length.times do |i|
          if nucleo[i] != "G" || nucleo[i] != "C" || nucleo[i] != "U" || nucleo[i] != "A"
            raise ArgumentError
          end
        end
      end
    end
    return nucleo

  end
end
