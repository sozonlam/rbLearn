def substrigns(str, dict)
  found = ""

  dict.each_str do |char|
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


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrigns("below", dictionary))