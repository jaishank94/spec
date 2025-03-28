class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?
  
      delimiter = ","
      if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delimiter = parts.first[2..]
        numbers = parts.last
      end
  
      numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i).sum
    end
  end
  