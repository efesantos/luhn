module Luhn
  def self.is_valid?(number)
    my_array = number.to_s.chars.map(&:to_i).reverse
    sum = 0

    my_array.each_with_index do |digit, index|
      if index % 2 != 0  && digit*2 >= 10
        sum += (digit*2-9)
      elsif index % 2 != 0 && digit*2 < 10
        sum += (digit*2)
      else
        sum += digit
      end
    end
    
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end