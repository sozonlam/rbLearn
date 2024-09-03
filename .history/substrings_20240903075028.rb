def substrigns(str, dict)
  found = {}

  dict.each do |word|
    found[word] = 0
    if str.include?(word)
      found[word] += 1
    end
  end
  found.delete_if { |key, value| value == 0 }
  found
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrigns("Howdy partner, sit down! How's it going?", dictionary)
# puts(substrigns("below", dictionary))