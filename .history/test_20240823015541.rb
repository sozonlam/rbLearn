def caesar_cipher(string, shift)
  shifted_text = ""

  string.each_char do |char|
    if char.match(/[A-Za-z]/)  # Check if the character is a letter
      base = char.ord < 91 ? 65 : 97  # Determine base for uppercase or lowercase
      shifted_char = ((char.ord - base + shift) % 26) + base
      shifted_text += shifted_char.chr
    else
      shifted_text += char  # Non-alphabetic characters remain unchanged
    end
  end

  shifted_text
end

# puts(caesar_cipher("aaa", -1))
puts (-1 % 26 + 97)
