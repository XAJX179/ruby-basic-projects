# frozen_string_literal: true

# caesar_cipher
module CaesarCipher
  module_function

  def caesar_cipher(string, shift)
    string.codepoints.map do |i|
      if i >= 65 && i <= 90
        upper_case(i, shift)
      elsif i >= 97 && i <= 122
        lower_case(i, shift)
      end
    end.join
  end

  def upper_case(val, shift)
    x = val + shift
    x -= 26 if x > 90
    x.chr
  end

  def lower_case(val, shift)
    x = val + shift
    x -= 26 if x > 122
    x.chr
  end
end
