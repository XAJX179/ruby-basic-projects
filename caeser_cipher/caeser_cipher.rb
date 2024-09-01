def caesar_cipher(string,shift_number)
  string.codepoints.map do |i|
    if i >= 65 && i <=90
      x = i + shift_number
      if x > 90
        x-=26
        x.chr
      else
        x.chr
      end
    elsif i >= 97 && i <= 122
      x = i + shift_number
      if x > 122
        x-=26
        x.chr
      else
        x.chr
      end
    end
  end.join
end

  pp caesar_cipher('abcd',2)
  pp caesar_cipher('abcyz',2)
  pp caesar_cipher('aBcYZ',2)