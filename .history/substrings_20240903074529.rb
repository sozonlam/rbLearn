def substrigns(str, dict)
  found = {}

  dict.each do |word|
    if word.include?(str)
      found[word] = 1
    end
  end
  found
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrigns("below", dictionary))