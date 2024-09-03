def substrings(word, dictionary)
  result = Hash.new(0) # Initialize an empty hash with a default value of 0

  dictionary.each do |substring|
    matches = word.downcase.scan(substring.downcase).length # Find all occurrences of the substring
    result[substring] = matches if matches > 0 # Add to hash if there's at least one match
  end

  result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("bebelowlow", dictionary)

