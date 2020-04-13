class Caesar_Cipher
  def self.encrypt(word, shift = 0)
    word.chars.map do |letter|
      if (letter.ord >= 97 && letter.ord <= 122)
        ((letter.ord - 97 + shift) % 26 + 97).chr
      elsif (letter.ord >= 65 && letter.ord <= 90)
        ((letter.ord - 65 + shift) % 26 + 65).chr
      else
        letter
      end
    end.join()
  end

  def self.decrypt(word, shift)
    encrypt(word, -shift)
  end
end


if $PROGRAM_NAME == __FILE__
  p Caesar_Cipher.encrypt("hello")
  p Caesar_Cipher.encrypt("Hello, 3")
  p Caesar_Cipher.encrypt("Hi there how are you", 5)
  p Caesar_Cipher.decrypt("Zrdk vhfuhw phdvvdjh!", 3)
end
