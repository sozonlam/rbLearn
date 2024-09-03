def substrigns(str, dict)
  found = {}

  dict.each do |word|
    found[word] = 0
    if str.include?(word)
      found[word] += 1
    end
  end
  found
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrigns("below", dictionary))